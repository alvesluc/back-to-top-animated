import 'package:flutter/material.dart';

class ScrollToTopArrow extends StatelessWidget {
  const ScrollToTopArrow({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 56,
      child: IconButton(
        splashRadius: 30,
        padding: const EdgeInsets.all(0),
        onPressed: onTap,
        icon: const Icon(
          Icons.arrow_upward,
          color: Color(0xFFC4C4CC),
        ),
      ),
    );
  }
}
