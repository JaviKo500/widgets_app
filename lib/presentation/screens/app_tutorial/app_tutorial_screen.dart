import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Search eat',
      'Et ipsum est dolor ullamco tempor enim quis incididunt magna amet fugiat.',
      'assets/images/1.png'),
  SlideInfo('Fast delivery', 'Minim amet commodo ea ea dolor labore laborum.',
      'assets/images/2.png'),
  SlideInfo('Search eat', 'Veniam deserunt velit proident id.',
      'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'app_tutorial_screen';
  const AppTutorialScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              physics: const BouncingScrollPhysics(),
              children: slides
                  .map((slide) => _Slide(
                      title: slide.title,
                      caption: slide.caption,
                      imageUrl: slide.imageUrl))
                  .toList(),
            ),

            Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                onPressed: () => context.pop(), 
                child: const Text(
                  'Out',
                  style: TextStyle()
                ),
              )
            ),
          ],
        ));
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(imageUrl),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(title, style: titleStyle),
            const SizedBox(
              height: 10,
            ),
            Text(caption, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
