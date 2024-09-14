import 'package:dio/dio.dart';
import 'package:fish/data_source/http/dio_client.dart';
import 'package:fish/models/post_model.dart';
import 'package:fish/riverpods/forms/post_form.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_repository.g.dart';

@riverpod
PostRepository postRepository(PostRepositoryRef ref) => DioPostRepository(
      ref.watch(dioClientProvider),
    );

abstract class PostRepository {
  Future<List<PostModel>> getPosts();
  Future<void> createPost(PostForm form);
}

class DioPostRepository implements PostRepository {
  final Dio _dio;
  DioPostRepository(this._dio);

  @override
  Future<List<PostModel>> getPosts() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      PostModel(
        author: "Money D. Luffy",
        avatarUrl:
            "https://wallpapers.com/images/hd/one-piece-bruised-luffy-fpf-after-fight-k3l17o4moedwwjgo.jpg",
        postAt: DateTime.now().subtract(const Duration(seconds: 100)),
        content:
            "The journey go to around the world. To find the treasure best. One Piece !!!",
        imageUrl:
            "https://wallpapers.com/images/hd/one-piece-pictures-bjm9tdff9yzguoup.jpg",
        likes: 120,
      ),
      PostModel(
        author: "Dung",
        avatarUrl:
            "https://wallpapers.com/images/hd/one-piece-bruised-luffy-fpf-after-fight-k3l17o4moedwwjgo.jpg",
        postAt: DateTime.now().subtract(const Duration(seconds: 100)),
        content: "This is new content",
        imageUrl:
            "https://wallpapers.com/images/hd/one-piece-pictures-bjm9tdff9yzguoup.jpg",
        likes: 120,
      ),
    ];
  }

  @override
  Future<void> createPost(PostForm form) async {
    final data = form.toJson();
    await _dio.post('/social-service/new-post', data: data);
  }
}
