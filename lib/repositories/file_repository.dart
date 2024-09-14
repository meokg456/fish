import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'package:fish/data_source/http/dio_uploader.dart';
import 'package:fish/models/request_progress_model.dart';
import 'package:mime/mime.dart';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'file_repository.g.dart';

@riverpod
FileRepository fileRepository(
  FileRepositoryRef ref,
) =>
    DioFileRepository(
      ref.watch(dioUploaderClientProvider),
    );

abstract class FileRepository {
  Future<String> uploadFile(String filePath);
  Stream<RequestProgressModel> getUploadFileProgress();
}

class DioFileRepository implements FileRepository {
  final Dio _dio;

  DioFileRepository(this._dio);

  final streamController = StreamController<RequestProgressModel>();

  Future<String> _uploadInBackground(String filePath) async {
    final receivePort = ReceivePort();
    await Isolate.spawn(_uploadFile, receivePort.sendPort);
    final completer = Completer<String>();

    receivePort.listen((data) {
      if (data is SendPort) {
        final sendPort = data;
        sendPort.send(filePath);
      }
      if (data is RequestProgressModel) {
        streamController.add(data);
      }
      if (data is String) {
        completer.complete(data);
      }
      if (data is Exception) {
        streamController.addError(data);
      }
    });
    return await completer.future;
  }

  Future<void> _uploadFile(SendPort sendPort) async {
    final receivePort = ReceivePort();
    sendPort.send(receivePort.sendPort);

    final filePath = await receivePort.first as String;
    final file = File(filePath);
    _dio.options.headers = {
      ..._dio.options.headers,
      HttpHeaders.contentTypeHeader: lookupMimeType(file.path),
    };
    try {
      final response = await _dio.post(
        '/upload',
        data: file.readAsBytesSync(),
        onSendProgress: (sent, total) {
          sendPort.send(RequestProgressModel(current: sent, total: total));
        },
      );
      sendPort.send(response.data['data']['url']);
    } catch (error) {
      sendPort.send(error);
    }
  }

  @override
  Future<String> uploadFile(String filePath) {
    return _uploadInBackground(filePath);
  }

  @override
  Stream<RequestProgressModel> getUploadFileProgress() {
    return streamController.stream;
  }
}
