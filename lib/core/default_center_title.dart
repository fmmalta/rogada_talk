import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DefaultCenterTitle extends StatelessWidget {
  final Widget child;
  const DefaultCenterTitle({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50.w),
      alignment: Alignment.center,
      child: child,
    );
  }
}
