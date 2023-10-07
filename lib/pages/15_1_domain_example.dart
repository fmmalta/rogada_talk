import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DomainExample extends StatelessWidget {
  const DomainExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Domain',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/domain-structure-1.png',
                height: 500.h,
                width: 300.w,
              ),
              Image.asset(
                'assets/domain-structure-2.png',
                height: 500.h,
                width: 400.w,
              ),
              Image.asset(
                'assets/domain-structure-3.png',
                height: 500.h,
                width: 400.w,
              )
            ],
          ),
        ),
      ],
    );
  }
}
