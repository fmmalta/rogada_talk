import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestsExample extends StatelessWidget {
  const TestsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Testes',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Expanded(
          child: Image.asset(
            'assets/test-example.png',
            height: 500.h,
            width: 400.w,
          ),
        ),
      ],
    );
  }
}
