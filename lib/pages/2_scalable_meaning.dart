import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScalableMeaning extends StatelessWidget {
  const ScalableMeaning({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  'Escalável',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
              Text(
                '"Que tem condições para crescer de forma uniforme ou para suportar um aumento de carga."',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontStyle: FontStyle.italic),
              ),
              RichText(
                text: TextSpan(
                  text: 'Podemos traduzir esse aumento de carga como: ',
                  children: [
                    TextSpan(
                      text: 'aumento de usuários, funcionalidades,',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                    ),
                    const TextSpan(text: ' etc'),
                  ],
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
