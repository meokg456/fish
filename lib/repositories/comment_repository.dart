import 'package:dio/dio.dart';
import 'package:fish/data_source/http/dio_client.dart';
import 'package:fish/models/domain/comment_model.dart';
import 'package:fish/riverpods/forms/comment_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'comment_repository.g.dart';

@riverpod
CommentRepository commentRepository(CommentRepositoryRef ref) =>
    DioCommentRepository(
      ref.watch(dioClientProvider),
    );

abstract class CommentRepository {
  Future<List<CommentModel>> getCommentsByPostId(int postId);
  Future<void> comment(CommentForm form);
}

class DioCommentRepository implements CommentRepository {
  final Dio _dio;
  DioCommentRepository(this._dio);

  @override
  Future<List<CommentModel>> getCommentsByPostId(int postId) async {
    final response = await _dio.get("/social-service/comments/$postId");
    final comments = response.data['list'] as List<dynamic>;
    return comments.map((comment) => CommentModel.fromJson(comment)).toList();
  }

  @override
  Future<void> comment(CommentForm form) async {
    await _dio.post("/social-service/comment", data: form.toJson());
  }
}
