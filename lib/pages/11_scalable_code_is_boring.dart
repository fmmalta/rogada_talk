import 'package:flutter/material.dart';
import 'package:rogadx_talk/core/advantage_template.dart';

class ScalableCodeIsBoring extends StatelessWidget {
  const ScalableCodeIsBoring({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvantageTemplate(
      advantageNumber: Text(
        'Característica 03',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      title: Text(
        'É mamão com açucar',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      bulletpoints: [
        Text(
          '- O código é escrito de modo que QUALQUER desenvolvedor de QUALQUER nível possa entender.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '- Como eu consigo isso?',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '\t\t\t\t- Não reescreva algo que já existe. Facilite sua vida e a dos outros.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '\t\t\t\t- Escolha seu gerenciador de estado e se mantenha com ele até o fim.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '\t\t\t\t- Consistência. Você e o time devem possuir um padrão ao nomear variáveis, funções e classes.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          '\t\t\t\t- Documente. Quando estiver escrevendo, tenha em mente você e outros irão revisitar o código.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
