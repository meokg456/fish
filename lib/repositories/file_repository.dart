import 'dart:async';
import 'dart:io';
import 'package:fish/data_source/http/dio_uploader.dart';
import 'package:path/path.dart' as p;

import 'package:dio/dio.dart';
import 'package:fish/models/progress.dart';
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
  Stream<Progress> uploadFile(String filePath);
}

class DioFileRepository implements FileRepository {
  final Dio _dio;
  DioFileRepository(this._dio);

  @override
  Stream<Progress> uploadFile(String filePath) {
    final file = File('/storage/emulated/0/Pictures/IMG_20240911_120206.jpg');
    final data = {
      'type': p.extension(file.path).replaceAll('.', ''),
      'data': file.readAsBytesSync(),
    };
    print(data);
    _dio.post(
      '/upload',
      data: data,
      onSendProgress: (sent, total) {
        print('$sent $total');
      },
    ).then((value) => print(value));

    return StreamController<Progress>().stream;
  }
}
