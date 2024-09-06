import 'package:fish/models/post.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.model});

  final Post model;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      elevation: 5,
      child: Column(
        children: [
          ListTile(
            leading: Container(
              padding: const EdgeInsets.all(2),
              width: 50,
              height: 50,
              child: CircleAvatar(
                backgroundImage: NetworkImage(model.avatarUrl),
                radius: 50,
              ),
            ),
            title: Text(
              model.author,
              style:
                  textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
            ),
            subtitle: Row(
              children: [
                Text(
                  Utils.timeSpendFromCreated(model.postAt),
                  style: textTheme.titleSmall,
                ),
                const SizedBox(width: 4),
                const Icon(Icons.public, size: 20),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            alignment: Alignment.centerLeft,
            child: Text(model.content, style: textTheme.bodyLarge),
          ),
          const SizedBox(height: 8),
          Image.network(model.imageUrl),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Icon(Icons.favorite, color: Colors.red),
                const SizedBox(width: 4),
                Text(model.likes.toString()),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton.icon(
                onPressed: () {
                  // Handle button press
                },
                icon: const Icon(Icons.favorite_border, size: 24),
                label: const Text('Like', style: TextStyle(fontSize: 15)),
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  // Handle button press
                },
                icon: const Icon(Icons.mode_comment_outlined, size: 24),
                label: const Text('Comment', style: TextStyle(fontSize: 15)),
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  // Handle button press
                },
                icon: const Icon(Icons.share_outlined, size: 24),
                label: const Text('Share', style: TextStyle(fontSize: 15)),
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
