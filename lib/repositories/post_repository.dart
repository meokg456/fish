import 'package:dio/dio.dart';
import 'package:fish/data_source/http/dio_client.dart';
import 'package:fish/models/domain/post_model.dart';
import 'package:fish/riverpods/forms/post_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_repository.g.dart';

@riverpod
PostRepository postRepository(PostRepositoryRef ref) => DioPostRepository(
      ref.watch(dioClientProvider),
    );

abstract class PostRepository {
  Future<List<PostModel>> getPosts(int page);
  Future<List<PostModel>> getUserPosts(int userId);
  Future<void> createPost(PostForm form);
  Future<bool> like(int postId);
  Future<PostModel> getPost(int id);
}

class DioPostRepository implements PostRepository {
  final Dio _dio;
  DioPostRepository(this._dio);

  @override
  Future<List<PostModel>> getPosts(int page) async {
    final response = await _dio.get('/social-service/post-list?page=$page');
    final postData = response.data['list'] as List<dynamic>;
    final postModels =
        postData.map((post) => PostModel.fromJson(post)).toList();
    return postModels;
  }

  @override
  Future<void> createPost(PostForm form) async {
    final data = form.toJson();
    await _dio.post('/social-service/new-post', data: data);
  }

  @override
  Future<bool> like(int postId) async {
    final response = await _dio.post(
      '/social-service/like-post',
      data: {
        'postId': postId,
      },
    );
    return response.data['data']['isLiked'];
  }

  @override
  Future<PostModel> getPost(int id) async {
    final response = await _dio.get("/social-service/post/$id");
    return PostModel.fromJson(response.data['data']);
  }

  @override
  Future<List<PostModel>> getUserPosts(int userId) async {
    final response = await _dio.get('/social-service/my-post-list/$userId');
    final postData = response.data['list'] as List<dynamic>;
    final postModels =
        postData.map((post) => PostModel.fromJson(post)).toList();
    return postModels;
  }
}
