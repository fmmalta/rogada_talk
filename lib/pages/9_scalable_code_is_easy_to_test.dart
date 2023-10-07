import 'package:flutter/material.dart';
import 'package:rogadx_talk/core/advantage_template.dart';

class ScalableCodeIsEaseToTest extends StatelessWidget {
  const ScalableCodeIsEaseToTest({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvantageTemplate(
      advantageNumber: Text(
        'Característica 01',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      title: Text(
        'É facil de testar',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      bulletpoints: [
        Text(
          '- Você testa seu projeto apenas quando ele está finalizado? Cuidado para não ser promovido a cliente...',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          '- Não depende apenas de testes manuais.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          '- Seus testes devem cobrir 100% do seu código. Porém...',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          '- Um código com 90% de cobertura pode ser bom ou ruim.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          '- Código que não pode ser testado não é escalável.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
