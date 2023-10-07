import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FolderStructure extends StatelessWidget {
  const FolderStructure({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            color: Colors.white,
            child: Image.asset(
              'assets/clean-arch-diagram.png',
              fit: BoxFit.cover,
              height: 500.h,
            ),
          ),
        ),
        const Align(
          alignment: Alignment.bottomRight,
          child: Text('Fonte: Medium'),
        )
      ],
    );
  }
}
