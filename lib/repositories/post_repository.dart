import 'package:dio/dio.dart';
import 'package:fish/app/flavor_config.dart';
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
  Future<void> createPost(PostForm form);
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
    for (int i = 0; i < postModels.length; i++) {
      final postModel = postModels[i];
      postModels[i] = postModel.copyWith(
        mediaUrl: postModel.mediaUrl.replaceAll(
          'http://localhost:9200',
          FlavorConfig.instance.values.uploadUrl,
        ),
      );
    }
    return postModels;
  }

  @override
  Future<void> createPost(PostForm form) async {
    final data = form.toJson();
    await _dio.post('/social-service/new-post', data: data);
  }
}
