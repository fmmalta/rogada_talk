import 'package:flutter/material.dart';

class FinalConsiderations extends StatelessWidget {
  const FinalConsiderations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Em resumo...', style: Theme.of(context).textTheme.titleLarge),
        RichText(
          text: TextSpan(
              text: '- Código que é escalável deve ser o ',
              children: [
                TextSpan(
                    text: 'padrão',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.secondary)),
                const TextSpan(
                    text:
                        ' no nosso ramo e eu não estaria fazendo essa apresentação se fosse o caso'),
              ],
              style: Theme.of(context).textTheme.bodyLarge),
        ),
        RichText(
          text: TextSpan(
              text:
                  '- Se seu código não é escalável atualmente, a melhor hora pra criar novos hábitos e começar a alterar a implementação é ',
              children: [
                TextSpan(
                    text: 'agora',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.secondary))
              ],
              style: Theme.of(context).textTheme.bodyLarge),
        ),
      ],
    );
  }
}
