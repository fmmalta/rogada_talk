import 'package:flutter/material.dart';

class HowToCreateTestableCode extends StatelessWidget {
  const HowToCreateTestableCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'E quais seriam as ',
          children: [
            TextSpan(
                text: 'características?',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.secondary))
          ],
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
