import 'package:back_to_top_animated/src/widgets/progress_bar.dart';
import 'package:flutter/material.dart';

import 'scroll_to_top_arrow.dart';

class ProgressBarAnimatedContainer extends StatelessWidget {
  const ProgressBarAnimatedContainer({
    super.key,
    required this.progress,
    required this.scrollToTopAction,
  });
  final double progress;
  final VoidCallback scrollToTopAction;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: progress > 4 ? 1 : 0,
      child: AnimatedContainer(
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 400),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 56,
        width: progress > 94 ? 56 : 240,
        decoration: BoxDecoration(
          color: const Color(0xFF29292E),
          borderRadius: BorderRadius.circular(32),
        ),
        child: progress > 94
            ? AnimatedOpacity(
                duration: const Duration(milliseconds: 600),
                opacity: progress > 95 ? 1 : 0,
                child: ScrollToTopArrow(
                  onTap: scrollToTopAction,
                ),
              )
            : ProgressBar(progress: progress),
      ),
    );
  }
}
