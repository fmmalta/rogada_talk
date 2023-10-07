import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DataExample extends StatelessWidget {
  const DataExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Data',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                'assets/data-structure-1.png',
                height: 500.h,
                width: 400.w,
              ),
              Image.asset(
                'assets/data-structure-2.png',
                height: 500.h,
                width: 400.w,
              ),
              Image.asset(
                'assets/data-source-example.png',
                height: 500.h,
                width: 350.w,
              )
            ],
          ),
        ),
      ],
    );
  }
}
