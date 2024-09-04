import 'package:dio/dio.dart';
import 'package:fish/dio_config/dio_config.dart';
import 'package:fish/models/post.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_service.g.dart';

@riverpod
PostService postService(PostServiceRef ref) =>
    DioPostService(ref.watch(dioProvider));

abstract class PostService {
  Future<List<Post>> getPosts();
}

class DioPostService implements PostService {
  final Dio _dio;

  DioPostService(this._dio);

  @override
  Future<List<Post>> getPosts() async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      Post(
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
      Post(
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
}
