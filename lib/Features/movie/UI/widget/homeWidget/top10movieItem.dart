import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_mvvm/Features/movie/UI/homepage.dart';
import 'package:movie_mvvm/core/utils/constants.dart';

import '../../../../../core/models/moviemodle.dart';

class top_10 extends StatelessWidget {
  const top_10({super.key, required this.topRate});
  final MovieModel topRate;
  @override
  Widget build(BuildContext context) {
    return
      Container(
      width: 340.w ,
      height: 200.h,
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(20.sp),
        image: DecorationImage(
          image:NetworkImage("$Baseimage${topRate.posterPath}") ,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
