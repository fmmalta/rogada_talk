import 'package:flutter/material.dart';
import 'package:rogadx_talk/core/power_point_animation.dart';

class HaveYouEverWorkedOnAProject extends StatelessWidget {
  const HaveYouEverWorkedOnAProject({super.key});
  @override
  Widget build(BuildContext context) {
    return const PowerPointAnimation(
      title: 'E quando só uma pessoa sabe o código?',
      topics: [
        'Qualquer dúvida que você não consiga solucionar, você irá precisar falar com essa pessoa',
        'Fora que isso pode consumir HORAS de ambos para resolver algo que deveria ser simples e fácil',
        'E o pior, e se essa pessoa abandonar o projeto? Ir para alguma outra empresa? Faz o que?'
      ],
    );
  }
}
