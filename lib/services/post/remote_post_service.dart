import 'package:dio/dio.dart';
import 'package:fish/data_source/http/dio_client.dart';
import 'package:fish/models/post.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'remote_post_service.g.dart';

@riverpod
RemotePostService remotePostService(RemotePostServiceRef ref) =>
    DioPostService(ref.watch(dioClientProvider));

abstract class RemotePostService {
  Future<List<Post>> getPosts();
}

class DioPostService implements RemotePostService {
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
