import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key, required this.progress});

  final double progress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          '${progress.toStringAsFixed(0)}%',
          style: const TextStyle(color: Color(0xFFC4C4CC)),
        ),
        const SizedBox(width: 4),
        Expanded(
          child: LinearProgressIndicator(
            value: progress / 100,
            color: const Color(0xFF8257E5),
            backgroundColor: const Color(0xFF505059),
          ),
        )
      ],
    );
  }
}
