import 'dart:async';

import 'package:fish/models/upload_file_model.dart';
import 'package:fish/repositories/file_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'upload_file.g.dart';

@riverpod
class UploadFile extends _$UploadFile {
  late final FileRepository _fileRepository = ref.watch(fileRepositoryProvider);

  @override
  Stream<RequestProgressModel> build(String filePath) {
    return _fileRepository.uploadFile(filePath);
  }
}
