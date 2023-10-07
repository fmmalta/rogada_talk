import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhatYourCodeNeeds extends StatelessWidget {
  const WhatYourCodeNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: 'É ',
            children: [
              TextSpan(
                text: 'obrigatório ',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
              ),
              const TextSpan(text: 'que '),
            ],
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(height: 30.h),
        Text(
          'Você consiga lidar com aumento de fluxos de usuários.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          'Suportar novas funcionalidades sem quebrar as que já existem.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
