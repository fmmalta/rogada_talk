import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PresentationExample extends StatelessWidget {
  const PresentationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Presentation',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/presentation-structure-1.png',
                height: 500.h,
                width: 400.w,
              ),
              Image.asset(
                'assets/presentation-structure-2.png',
                height: 500.h,
                width: 400.w,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
