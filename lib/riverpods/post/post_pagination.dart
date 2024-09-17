import 'package:fish/models/pagination_model.dart';
import 'package:fish/riverpods/post/posts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_pagination.g.dart';

@riverpod
class PostPagination extends _$PostPagination {
  @override
  PaginationModel build() {
    return PaginationModel();
  }

  void nextPage() {
    final lastPageData = ref.read(postsProvider(state.current));
    if (lastPageData.isLoading) {
      return;
    }
    if (lastPageData.requireValue.isEmpty) {
      return;
    }
    state = state.copyWith(current: state.current + 1);
  }
}
