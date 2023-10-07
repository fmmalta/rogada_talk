import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PresentationScreen extends StatelessWidget {
  const PresentationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'Para quem não me conhece...',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/eu.jpeg',
                width: 300.w,
                height: 400.h,
              ),
            ),
            SizedBox(height: 10.h),
            RichText(
              text: TextSpan(
                text: 'Fellipe ',
                children: [
                  TextSpan(
                    text: 'Malta',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                  ),
                ],
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
