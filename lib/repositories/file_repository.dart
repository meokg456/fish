import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'package:fish/data_source/http/dio_uploader.dart';
import 'package:fish/models/upload_file_model.dart';
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
  Stream<RequestProgressModel> uploadFile(String filePath);
}

class DioFileRepository implements FileRepository {
  final Dio _dio;

  DioFileRepository(this._dio);

  Future<void> _uploadInBackground(
    String filePath,
    StreamController<RequestProgressModel> streamController,
  ) async {
    final receivePort = ReceivePort();
    await Isolate.spawn(_uploadFile, receivePort.sendPort);

    receivePort.listen((data) {
      if (data is SendPort) {
        final sendPort = data;
        sendPort.send(filePath);
      }
      if (data is RequestProgressModel) {
        streamController.add(data);
      }
      if (data is Exception) {
        streamController.addError(data);
      }
    });
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
      sendPort.send(
        RequestProgressModel(current: 1, total: 1, data: response.data),
      );
    } catch (error) {
      sendPort.send(error);
    }
  }

  @override
  Stream<RequestProgressModel> uploadFile(String filePath) {
    final streamController = StreamController<RequestProgressModel>();

    _uploadInBackground(filePath, streamController);

    return streamController.stream;
  }
}
