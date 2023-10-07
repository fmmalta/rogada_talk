import 'package:flutter/material.dart';
import 'package:rogadx_talk/core/advantage_template.dart';

class ScalableCodeIsComposable extends StatelessWidget {
  const ScalableCodeIsComposable({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvantageTemplate(
      advantageNumber: Text(
        'Característica 04',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      title: Text(
        'É composto',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      bulletpoints: [
        Text(
          '- As aplicações escaláveis possuem algo em comum: são compostas de módulos pequenos e independentes.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '- Isso garante que cada módulo tenha sua responsabilidade, que possa ser testado e reutilizado.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '- Cada módulo devem abstrair os detalhes da implementação.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '- De preferência, atender ao S.O.L.I.D.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '- Dividimos nosso código em 3 camadas: regras de negócio, consumo de dados e a parte visual/gerenciamento de estado.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
