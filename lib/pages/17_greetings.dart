import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Greetings extends StatelessWidget {
  const Greetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            text: 'Muito ',
            style: Theme.of(context).textTheme.titleLarge,
            children: [
              TextSpan(
                  text: 'obrigado!',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary)),
            ],
          ),
        ),
        Text(
          'Obrigado a cada um de vocês por terem assistido até aqui. \nEspero que tenham gostado e se divertido.',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Spacer(flex: 1),
        RichText(
          text: TextSpan(
            text: 'O código da apresentação se encontra no meu ',
            children: [
              TextSpan(
                text: 'GitHub',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              const TextSpan(text: '.'),
            ],
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontStyle: FontStyle.italic),
          ),
          textAlign: TextAlign.center,
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'GitHub: @fmmalta',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontStyle: FontStyle.italic),
            ),
            SizedBox(width: 20.w),
            Text(
              'LinkedIn: @fellipedm',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontStyle: FontStyle.italic),
            ),
          ],
        )
      ],
    );
  }
}
