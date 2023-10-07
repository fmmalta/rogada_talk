import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CleanArchitecture extends StatelessWidget {
  const CleanArchitecture({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Expanded(
          child: Image.asset(
            'assets/clean-arch.jpeg',
            fit: BoxFit.contain,
            height: 550.h,
          ),
        ),
        const Align(
          alignment: Alignment.bottomRight,
          child: Text('Fonte: Google'),
        )
      ],
    );
  }
}
