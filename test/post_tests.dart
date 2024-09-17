import 'package:fish/models/domain/post_model.dart';
import 'package:fish/repositories/post_repository.dart';
import 'package:fish/riverpods/post/posts.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'post_tests.mocks.dart';

@GenerateNiceMocks([MockSpec<PostRepository>()])
void main() {
  final mockRepository = MockPostRepository();
  final container = ProviderContainer(
    overrides: [
      postRepositoryProvider.overrideWith((ref) => mockRepository),
    ],
  );

  test('Test $postsProvider success has data', () async {
    final response = [
      PostModel(
        id: 1,
        author: 'Author 1',
        content: 'Content 1',
        avatarUrl: '',
        postAt: DateTime.now(),
        mediaUrl: '',
      ),
      PostModel(
        id: 2,
        author: 'Author 2',
        content: 'Content 2',
        avatarUrl: '',
        postAt: DateTime.now(),
        mediaUrl: '',
      ),
    ];

    when(mockRepository.getPosts(1)).thenAnswer((_) async => response);

    addTearDown(container.dispose);
    await expectLater(
      container.read(postsProvider(1).future),
      completion(response),
    );
  });
}
