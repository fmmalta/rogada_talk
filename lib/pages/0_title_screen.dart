import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TitleScreen extends StatelessWidget {
  const TitleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Como construir',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                'código escalável.',
                speed: const Duration(milliseconds: 120),
                textStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              )
            ],
            repeatForever: true,
          ),
        ],
      ),
    );
  }
}
