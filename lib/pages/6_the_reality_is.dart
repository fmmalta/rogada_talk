import 'package:flutter/material.dart';

class TheRealityIs extends StatelessWidget {
  const TheRealityIs({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'A realidade é',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
