import 'package:flutter/material.dart';
import 'package:rogadx_talk/core/advantage_template.dart';

class SavesYouMoney extends StatelessWidget {
  const SavesYouMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvantageTemplate(
      advantageNumber: Text(
        'Benefício 02',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      title: RichText(
        text: TextSpan(
          text: 'Te poupa ',
          children: [
            TextSpan(
                text: 'dinheiro.',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Theme.of(context).colorScheme.secondary))
          ],
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      bulletpoints: [
        Text(
          '- Você não vai precisar de muitos programadores.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          '- Menos programadores, menos dinheiro gasto.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          '- Menos programadores, menos bugs criados.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          '- Você escala a equipe quando realmente precisar.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
