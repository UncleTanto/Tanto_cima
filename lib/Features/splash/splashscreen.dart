import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_mvvm/main.dart';

import '../../../../core/utils/app_router.dart';
import '../../../../core/utils/constants.dart';

class splash_screen extends StatelessWidget {
  const splash_screen({super.key});

  @override
  Widget build(BuildContext context) {
    navigateToHome(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: RedColor,
        body: Center(
          child: Container(
            width: double.infinity,
            child:
            Image.asset(
              logo,
              width: 200.w,
              height: 200.h,
            ),
          ),
        ),
      ),
    );
  }
}

void navigateToHome(BuildContext context) {
  Future.delayed(const Duration(seconds: 4),
        () {
      GoRouter.of(context).pushReplacement('/HomeView');
    },
  );
}