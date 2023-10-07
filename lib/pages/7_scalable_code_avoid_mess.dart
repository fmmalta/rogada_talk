import 'package:flutter/material.dart';
import 'package:rogadx_talk/core/advantage_template.dart';

class ScalableCodeAvoidMess extends StatelessWidget {
  const ScalableCodeAvoidMess({super.key});
  @override
  Widget build(BuildContext context) {
    return AdvantageTemplate(
      advantageNumber: Text(
        'Benefício 01',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      title: RichText(
        text: TextSpan(
          text: 'Dê adeus a ',
          children: [
            TextSpan(
                text: 'bagunça.',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.secondary))
          ],
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      bulletpoints: [
        RichText(
          text: TextSpan(
              text: '- ',
              children: [
                TextSpan(
                    text: 'Evita',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.secondary)),
                TextSpan(
                  text: ' que o código fique altamente acoplado',
                  style: Theme.of(context).textTheme.bodyLarge,
                )
              ],
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        RichText(
          text: TextSpan(
            text: '- Te faz ',
            children: [
              TextSpan(
                text: 'ganhar',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              const TextSpan(text: ' tempo')
            ],
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        RichText(
          text: TextSpan(
            text: '- Lhe tira o ',
            children: [
              TextSpan(
                  text: 'medo',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary)),
              const TextSpan(text: ' de alterá-lo')
            ],
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        RichText(
          text: TextSpan(
            text: '- Aumenta sua ',
            children: [
              TextSpan(
                  text: 'confiança',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary)),
              const TextSpan(text: ' para introduzir novas funcionalidades')
            ],
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ],
    );
  }
}
