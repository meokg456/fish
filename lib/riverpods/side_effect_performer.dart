import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'side_effect_performer.g.dart';

@riverpod
class SideEffectPerformer extends _$SideEffectPerformer {
  @override
  FutureOr<void> build(String id) {}

  Future<void> perform(Future<void> Function() function) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(function);
  }
}
