import 'package:flutter/material.dart';

import 'widgets/progress_bar_animated_container.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPage();
}

class _PostPage extends State<PostPage> {
  final scrollController = ScrollController();
  double progress = 0;
  bool hasReachedEnd = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(onScroll);
  }

  void onScroll() {
    if (!scrollController.hasClients) return;
    final currentScroll = scrollController.offset;
    final maxScroll = scrollController.position.maxScrollExtent;
    final scrollProgressPercentage = (100 * currentScroll) / maxScroll;

    if (currentScroll > 0 && scrollProgressPercentage <= 100) {
      setProgressFromScrollPercentage(scrollProgressPercentage);
    }
  }

  void setProgressFromScrollPercentage(double percentage) {
    if (percentage > 0) setState(() => progress = percentage);
  }

  void scrollToTop() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF222222),
      body: SafeArea(
        bottom: false,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Lorem Ipsum',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Labore, pariatur voluptatum perferendis incidunt repellat soluta odit vitae voluptatibus iusto exercitationem. Quos soluta cumque pariatur quaerat numquam similique sunt, eius asperiores.',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis id rerum sit, atque in, natus consequatur repellendus perspiciatis molestiae doloremque aliquam. Officiis voluptatum blanditiis, officia rem asperiores praesentium fuga cum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laborum? Ullam dolorem autem quia sint. Placeat quibusdam hic fugit porro iure alias in sint fugiat nesciunt, vero ut animi dicta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis id rerum sit, atque in, natus consequatur repellendus perspiciatis molestiae doloremque aliquam. Officiis voluptatum blanditiis, officia rem asperiores praesentium fuga cum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laborum? Ullam dolorem autem quia sint. Placeat quibusdam hic fugit porro iure alias in sint fugiat nesciunt, vero ut animi dicta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis id rerum sit, atque in, natus consequatur repellendus perspiciatis molestiae doloremque aliquam. Officiis voluptatum blanditiis, officia rem asperiores praesentium fuga cum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laborum? Ullam dolorem autem quia sint. Placeat quibusdam hic fugit porro iure alias in sint fugiat nesciunt, vero ut animi dicta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis id rerum sit, atque in, natus consequatur repellendus perspiciatis molestiae doloremque aliquam. Officiis voluptatum blanditiis, officia rem asperiores praesentium fuga cum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laborum? Ullam dolorem autem quia sint. Placeat quibusdam hic fugit porro iure alias in sint fugiat nesciunt, vero ut animi dicta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis id rerum sit, atque in, natus consequatur repellendus perspiciatis molestiae doloremque aliquam. Officiis voluptatum blanditiis, officia rem asperiores praesentium fuga cum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laborum? Ullam dolorem autem quia sint. Placeat quibusdam hic fugit porro iure alias in sint fugiat nesciunt, vero ut animi dicta.Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis id rerum sit, atque in, natus consequatur repellendus perspiciatis molestiae doloremque aliquam. Officiis voluptatum blanditiis, officia rem asperiores praesentium fuga cum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laborum? Ullam dolorem autem quia sint. Placeat quibusdam hic fugit porro iure alias in sint fugiat nesciunt, vero ut animi dicta. Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis id rerum sit, atque in, natus consequatur repellendus perspiciatis molestiae doloremque aliquam. Officiis voluptatum blanditiis, officia rem asperiores praesentium fuga cum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laborum? Ullam dolorem autem quia sint. Placeat quibusdam hic fugit porro iure alias in sint fugiat nesciunt, vero ut animi dicta. Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis id rerum sit, atque in, natus consequatur repellendus perspiciatis molestiae doloremque aliquam. Officiis voluptatum blanditiis, officia rem asperiores praesentium fuga cum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laborum? Ullam dolorem autem quia sint. Placeat quibusdam hic fugit porro iure alias in sint fugiat nesciunt, vero ut animi dicta. Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis id rerum sit, atque in, natus consequatur repellendus perspiciatis molestiae doloremque aliquam. Officiis voluptatum blanditiis, officia rem asperiores praesentium fuga cum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laborum? Ullam dolorem autem quia sint. Placeat quibusdam hic fugit porro iure alias in sint fugiat nesciunt, vero ut animi dicta.',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Debitis id rerum sit, atque in, natus consequatur repellendus perspiciatis molestiae doloremque aliquam. Officiis voluptatum blanditiis, officia rem asperiores praesentium fuga cum.Lorem ipsum dolor sit amet consectetur adipisicing elit. Minus, laborum? Ullam dolorem autem quia sint. Placeat quibusdam hic fugit porro iure alias in sint fugiat nesciunt, vero ut animi dicta.',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 80)
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 32,
              child: ProgressBarAnimatedContainer(
                progress: progress,
                scrollToTopAction: scrollToTop,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
