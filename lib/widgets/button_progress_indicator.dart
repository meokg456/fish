import 'package:flutter/material.dart';

class ButtonProgressIndicator extends StatelessWidget {
  const ButtonProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 16,
      width: 16,
      child: CircularProgressIndicator(
        strokeWidth: 3,
      ),
    );
  }
}
