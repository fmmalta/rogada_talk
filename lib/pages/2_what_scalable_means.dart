import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WhatScalableMeans extends StatelessWidget {
  const WhatScalableMeans({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: 'O que significa algo ',
          children: [
            TextSpan(
              text: 'escalável?',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                    fontSize: 150.sp,
                  ),
            )
          ],
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
