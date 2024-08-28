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
      Post(author: 'Huu Dung', content: 'Hello world'),
      Post(author: 'Hoang Anh', content: 'This is a new post'),
    ];
  }
}
