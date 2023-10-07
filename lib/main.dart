import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rogadx_talk/pages/17_greetings.dart';

import 'core/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1280, 720),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RogaDX Talk',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            secondary: const Color(0xFF5864FF),
          ),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.black,
          fontFamily: 'Space Grotesk',
          textTheme: TextTheme(
            titleLarge: TextStyle(
              fontSize: 120.sp,
              fontWeight: FontWeight.bold,
              fontFamily: 'Space Grotesk',
              color: Colors.white,
            ),
            titleMedium: TextStyle(
              fontSize: 90.sp,
              fontWeight: FontWeight.bold,
              fontFamily: 'Space Grotesk',
              color: Colors.white,
            ),
            titleSmall: TextStyle(
              fontSize: 70.sp,
              fontWeight: FontWeight.bold,
              fontFamily: 'Space Grotesk',
              color: Colors.white,
            ),
            bodyLarge: TextStyle(
              fontSize: 40.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Darker Grotesque',
              color: Colors.white,
            ),
            bodyMedium: TextStyle(
              fontSize: 30.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Darker Grotesque',
              color: Colors.white,
            ),
            bodySmall: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w600,
              fontFamily: 'Darker Grotesque',
              color: Colors.white,
            ),
          ),
        ),
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final PageController pageViewController = PageController();
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 25.h),
            child: PageView(
              controller: pageViewController,
              children: const [
                TitleScreen(),
                PresentationScreen(),
                WhatScalableMeans(),
                ScalableMeaning(),
                WhatYourCodeNeeds(),
                WhyBuildScalableCode(),
                TheRealityIs(),
                CodeWontSurvive(),
                ScalableCodeAdvantages(),
                ScalableCodeAvoidMess(),
                SavesYouMoney(),
                HowToCreateTestableCode(),
                ScalableCodeIsEaseToTest(),
                ScalableCodeIsEasyToDebug(),
                ScalableCodeIsBoring(),
                ScalableCodeIsComposable(),
                MyArchitecture(),
                CleanArchitecture(),
                FolderStructure(),
                DomainExample(),
                DataExample(),
                PresentationExample(),
                TestsExample(),
                WhoShouldWriteScalableCode(),
                FinalConsiderations(),
                Greetings(),
              ],
            ),
          ),
          Row(
            children: [
              ActionButton(
                onPressed: () {
                  pageViewController.previousPage(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              ActionButton(
                onPressed: () {
                  pageViewController.nextPage(
                    duration: const Duration(milliseconds: 250),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const ActionButton({this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width / 2,
        color: Colors.transparent,
      ),
    );
  }
}
