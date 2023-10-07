import 'package:flutter/material.dart';

class CodeWontSurvive extends StatefulWidget {
  const CodeWontSurvive({super.key});

  @override
  State<CodeWontSurvive> createState() => _CodeWontSurviveState();
}

class _CodeWontSurviveState extends State<CodeWontSurvive>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    animation = Tween<Offset>(
      begin: const Offset(0, 30),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: const Interval(0.7, 1, curve: Curves.easeInOut),
    ));
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
    return Align(
      alignment: Alignment.centerLeft,
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          RichText(
            text: TextSpan(
              text: '"Nenhum código sobrevive se apenas  ',
              children: [
                TextSpan(
                  text: 'UMA pessoa',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                const TextSpan(
                    text: ' detém a maior parte do conhecimento sobre ele."')
              ],
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          SlideTransition(
            position: animation,
            child: Text(
              'Malta, Fellipe, 2023',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(fontStyle: FontStyle.italic),
            ),
          )
        ],
      ),
    );
  }
}
