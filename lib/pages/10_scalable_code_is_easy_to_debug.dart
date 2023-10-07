import 'package:flutter/material.dart';
import 'package:rogadx_talk/core/advantage_template.dart';

class ScalableCodeIsEasyToDebug extends StatelessWidget {
  const ScalableCodeIsEasyToDebug({super.key});

  @override
  Widget build(BuildContext context) {
    return AdvantageTemplate(
      advantageNumber: Text(
        'Característica 02',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      title: Text(
        'É facil de debugar',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      bulletpoints: [
        Text(
          '- Se bugs aparecem, seus testes irão falhar. Ajudando a encontrar o código que está com problemas',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          '- Se os testes não falharem e continuar algum bug, após corrigido, um novo teste deve ser escrito.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          '- Debuggers e ferramentas para inspecionar os widgets também podem facilitar bastante sua vida',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
