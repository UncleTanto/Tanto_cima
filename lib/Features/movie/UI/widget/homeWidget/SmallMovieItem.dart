import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_mvvm/core/shaqtest.dart';
import 'package:movie_mvvm/core/utils/constants.dart';

import '../../../../../core/models/moviemodle.dart';

class SmallMovieItem extends StatelessWidget {
  const SmallMovieItem({super.key,  required this.popularx});
  final MovieModel popularx;


  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          InkWell(
            onTap: () {
              context.push("/MoviePage",extra: popularx);
            },
            child: Container(
            width: 80.w ,
            height: 100.h,
            margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            decoration: BoxDecoration(
              color: Colors.cyan,
              borderRadius: BorderRadius.circular(20.sp),
              image: DecorationImage(
                image:NetworkImage("$Baseimage${popularx.posterPath}"),
                fit: BoxFit.fill,
              ),
            ),
                ),
          ),
        ],
      );
  }
}

