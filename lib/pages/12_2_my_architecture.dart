import 'package:flutter/material.dart';

class MyArchitecture extends StatefulWidget {
  const MyArchitecture({super.key});

  @override
  State<MyArchitecture> createState() => _MyArchitectureState();
}

class _MyArchitectureState extends State<MyArchitecture>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation =
        Tween<Offset>(begin: const Offset(-30, 0), end: const Offset(0, 0))
            .animate(
      CurvedAnimation(
        parent: controller,
        curve: const Interval(0.6, 1, curve: Curves.easeInOut),
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
    return Align(
      alignment: Alignment.centerLeft,
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          RichText(
            text: TextSpan(
              text: 'E qual é a ',
              children: [
                TextSpan(
                  text: 'arquitetura\n',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                ),
                const TextSpan(text: 'ideal para mim?'),
              ],
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          SlideTransition(
            position: animation,
            child: Text(
              'E possivelmente para você...',
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
