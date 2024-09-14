import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'picked_file.g.dart';

@riverpod
class PickedFile extends _$PickedFile {
  @override
  String? build() {
    return null;
  }

  void addFile(String filePath) {
    state = filePath;
  }
}
