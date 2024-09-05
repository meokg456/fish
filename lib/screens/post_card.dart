import 'package:fish/models/post.dart';
import 'package:fish/utils/utils.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key, required this.model});

  final Post model;

  @override
  Widget build(BuildContext context) {
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
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            subtitle: Row(
              children: [
                Text(Utils.timeSpendFromCreated(model.postAt)),
                SizedBox.fromSize(size: const Size(10, 10)),
                const Icon(Icons.public, size: 20),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            alignment: Alignment.centerLeft,
            child: Text(model.content, style: const TextStyle(fontSize: 15)),
          ),
          Image.network(model.imageUrl),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Icon(Icons.favorite, color: Colors.red),
                Text(model.likes.toString()),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
