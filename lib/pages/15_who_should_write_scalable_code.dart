import 'package:flutter/material.dart';

class WhoShouldWriteScalableCode extends StatefulWidget {
  const WhoShouldWriteScalableCode({super.key});

  @override
  State<WhoShouldWriteScalableCode> createState() =>
      _WhoShouldWriteScalableCodeState();
}

class _WhoShouldWriteScalableCodeState extends State<WhoShouldWriteScalableCode>
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
      begin: const Offset(-30, 0),
      end: const Offset(0, 0),
    ).animate(CurvedAnimation(
      parent: controller,
      curve: const Interval(0.8, 1, curve: Curves.easeInOut),
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
          Text(
            'Quem deve escrever código escalável?',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SlideTransition(
            position: animation,
            child: Text(
              'Bom, todo mundo...',
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
