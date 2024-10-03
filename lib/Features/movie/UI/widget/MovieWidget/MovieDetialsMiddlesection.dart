import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/MovieWidget/Actionbutton.dart';
import 'package:movie_mvvm/core/shaqtest.dart';

import '../../../../../core/models/moviemodle.dart';
import '../../../../../core/utils/constants.dart';

class movieName extends StatelessWidget {
  final MovieModel? popularx;
  const movieName({super.key, this.popularx});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text("${popularx?.originalTitle}",style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),),
          SizedBox(height: 14.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${popularx?.releaseDate}  .",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold)),
              Text("${popularx?.genreIds}  .",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold)),//todo convert ids to Letter by using where,
              Text("${popularx?.voteAverage}  .",style: TextStyle(fontSize: 10.sp,fontWeight: FontWeight.bold)),//todo convert ids to Letter by using where,

            ]
          ),
          SizedBox(height: 14.sp,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Actionbutton(btnColor: RedColor, icon: Icons.download, Buttonlabel: "download"),
              SizedBox(width: 9.w,),
              Actionbutton(btnColor: TextPrimaryColor, icon: Icons.play_arrow, Buttonlabel: "play"),
            ],
          ),
          SizedBox(height: 24.h,),
        ],
      ),
    );
  }
}
