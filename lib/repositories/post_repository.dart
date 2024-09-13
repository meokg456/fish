import 'package:fish/models/post_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'post_repository.g.dart';

@riverpod
PostRepository postRepository(PostRepositoryRef ref) => DioPostRepository();

abstract class PostRepository {
  Future<List<PostModel>> getPosts();
}

class DioPostRepository implements PostRepository {
  DioPostRepository();

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
}
