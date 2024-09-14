import 'dart:async';

import 'package:fish/models/request_progress_model.dart';
import 'package:fish/repositories/file_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'upload_file_progress.g.dart';

@riverpod
class UploadFileProgress extends _$UploadFileProgress {
  late final FileRepository _fileRepository = ref.watch(fileRepositoryProvider);

  @override
  Stream<RequestProgressModel> build() {
    return _fileRepository.getUploadFileProgress();
  }
}
