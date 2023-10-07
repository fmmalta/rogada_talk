import 'package:flutter/material.dart';

class WhyBuildScalableCode extends StatefulWidget {
  const WhyBuildScalableCode({super.key});

  @override
  State<WhyBuildScalableCode> createState() => _WhyBuildScalableCodeState();
}

class _WhyBuildScalableCodeState extends State<WhyBuildScalableCode>
    with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<AlignmentGeometry> alignAnimation;
  late Animation<Offset> firstTextAnimation;
  late Animation<Offset> secondTextAnimation;
  late Animation<Offset> thirdTextAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 12),
    );
    alignAnimation = AlignmentTween(
      begin: Alignment.bottomLeft,
      end: Alignment.topLeft,
    ).animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.3, 0.38, curve: Curves.easeInOut),
      ),
    );
    firstTextAnimation =
        Tween<Offset>(begin: const Offset(-10, 0.0), end: const Offset(0, 0))
            .animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.42, 0.58, curve: Curves.easeInOut),
      ),
    );
    secondTextAnimation =
        Tween<Offset>(begin: const Offset(-10, 0.0), end: const Offset(0, 0))
            .animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.7, 0.82, curve: Curves.easeInOut),
      ),
    );
    thirdTextAnimation =
        Tween<Offset>(begin: const Offset(-10, 0.0), end: const Offset(0, 0))
            .animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.9, 1, curve: Curves.easeInOut),
      ),
    );
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlignTransition(
      alignment: alignAnimation,
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          RichText(
            text: TextSpan(
              text: 'Porque eu devo fazer \n',
              style: Theme.of(context).textTheme.titleMedium,
              children: [
                TextSpan(
                    text: 'código escalável',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary)),
                const TextSpan(text: '?'),
              ],
            ),
          ),
          SlideTransition(
            position: firstTextAnimation,
            child: const Text(
              '- Já trabalhou em algum projeto onde apenas uma pessoa sabia a maior parte das funcionalidades? Sabia onde ficavam certos arquivos, regras de negócio?',
            ),
          ),
          SlideTransition(
            position: secondTextAnimation,
            child: const Text(
              '- Qualquer dúvida que você não consiga solucionar você irá precisar falar com essa pessoa.',
            ),
          ),
          SlideTransition(
            position: thirdTextAnimation,
            child: RichText(
              text: TextSpan(
                  text: '- E se essa pessoa ',
                  children: [
                    TextSpan(
                      text: 'abandonar ',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const TextSpan(
                        text:
                            'o projeto? Ir para alguma outra empresa? Faz o que?')
                  ],
                  style: Theme.of(context).textTheme.bodyMedium),
            ),
          ),
        ],
      ),
    );
  }
}
