import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/homeWidget/SmallMovieItem.dart';
import 'package:movie_mvvm/Features/movie/network/NowPlaying/now_playing_cubit.dart';
import 'package:movie_mvvm/Features/movie/network/NowPlaying/now_playing_state.dart';
import 'package:movie_mvvm/core/shaqtest.dart';

class NowPlayinglist extends StatelessWidget {
  const NowPlayinglist({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NowPlayingCubit,NowPlayingState>(builder: (context, state){
      if(state is NowPlayingLoaded)
        {
         return SizedBox(
            height: 200.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10, // Assuming 10 top movies
              itemBuilder: (context, index) {
                return SmallMovieItem(popularx: state.cubitNoemovie[index]); // Pass index to item
              },
            ),
          );
        }
      else if(state is NowPlayingError){
        return Text(state.toString());
      }

      else{
        return Center(child: CircularProgressIndicator());
      }
    });

  }
}


