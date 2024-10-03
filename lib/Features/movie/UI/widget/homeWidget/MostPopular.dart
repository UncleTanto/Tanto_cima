import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/homeWidget/SmallMovieItem.dart';
import 'package:movie_mvvm/Features/movie/network/populare/populare_cubit.dart';
import 'package:movie_mvvm/core/shaqtest.dart';

import '../../../network/populare/populare_state.dart';


class MostPopular extends StatelessWidget {
  const MostPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<PopulareCubit,PopulareState>(builder: (context, state){
      if(state is PopulareLoaded )
        {
       return   SizedBox(
            height: 120.h,
            child:
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Assuming 10 top movies
              itemBuilder: (context, index) {
                return SmallMovieItem(popularx: state.cubitepopularmovie[index]);
              },
            ),
          );

        }
      else if(state is PopulareError){
        return Text(state.toString());
      }

      else{
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}


