import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_mvvm/core/shaqtest.dart';

import '../../../../../core/models/moviemodle.dart';
import '../../../../../core/utils/constants.dart';

class MovieHeaderItem extends StatelessWidget {
  final MovieModel? popularx;

  MovieHeaderItem({super.key, required this.popularx});
  @override
  Widget build(BuildContext context) {

    return
      Container(
        alignment: Alignment.bottomRight,
        width: double.infinity,
        height: 200.h,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("$Baseimage${popularx?.posterPath}"),
            fit: BoxFit.fill
          ),
        ),
        child: IconButton(onPressed: (){}, icon: Icon(Icons.favorite)),
      );
  }
}
