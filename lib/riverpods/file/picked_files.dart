import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'picked_files.g.dart';

@riverpod
class PickedFiles extends _$PickedFiles {
  @override
  List<String> build() {
    return [];
  }

  void addFiles(List<String> files) {
    state = [...state, ...files];
  }
}
