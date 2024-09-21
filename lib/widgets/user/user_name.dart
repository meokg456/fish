import 'package:fish/app/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UserName extends StatelessWidget {
  const UserName({super.key, required this.userId, required this.name});

  final int userId;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final currentPath = GoRouterState.of(context).matchedLocation;
        final nextPath = Routes.profile(id: userId);

        if (currentPath != nextPath) {
          context.push(nextPath);
        }
      },
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Text(
        name,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
