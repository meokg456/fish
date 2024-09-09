import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CloseButton extends StatelessWidget {
  const CloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        context.pop();
      },
      icon: const Icon(Icons.close),
    );
  }
}
