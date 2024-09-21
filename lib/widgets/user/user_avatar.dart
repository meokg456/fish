import 'package:fish/app/router.dart';
import 'package:fish/gen/assets.gen.dart';
import 'package:fish/models/domain/user_model.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    required this.userId,
    required this.avatarUrl,
  });

  final int userId;
  final String avatarUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: 50,
      height: 50,
      child: InkWell(
        onTap: () {
          final currentPath = GoRouterState.of(context).matchedLocation;
          final nextPath = Routes.profile(id: userId);

          if (currentPath != nextPath) {
            context.push(nextPath);
          }
        },
        customBorder: const CircleBorder(),
        child: CircleAvatar(
          backgroundImage: avatarUrl.isEmpty
              ? AssetImage(Assets.images.defaultAvatar.keyName)
              : NetworkImage(avatarUrl),
          radius: 50,
        ),
      ),
    );
  }
}
