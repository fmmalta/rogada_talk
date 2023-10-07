import 'package:flutter/material.dart';

class ScalableCodeAdvantages extends StatelessWidget {
  const ScalableCodeAdvantages({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'Qual o maior benefício de um código ',
          children: [
            TextSpan(
                text: 'escalável?',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.secondary))
          ],
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
