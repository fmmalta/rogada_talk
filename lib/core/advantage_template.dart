import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdvantageTemplate extends StatelessWidget {
  final List<Widget> bulletpoints;
  final Widget title;
  final Widget advantageNumber;
  const AdvantageTemplate({
    required this.bulletpoints,
    required this.title,
    required this.advantageNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: advantageNumber,
              ),
              title,
              ...List<Widget>.generate(bulletpoints.length, (index) {
                return bulletpoints[index];
              })
            ],
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
