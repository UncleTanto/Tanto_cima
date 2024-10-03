import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_mvvm/Features/movie/UI/homepage.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/homeWidget/top10movieItem.dart';
import 'package:movie_mvvm/Features/movie/network/TopRate/top_rate_state.dart';

import '../../../network/TopRate/top_rate_cubit.dart';

class top_10_List extends StatelessWidget {
  const top_10_List({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ToprateCubit,TopRateState>(builder: (context, state){
      if(state is TopRateLoaded )
      {
        return SizedBox(
          height: 210.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10, // Assuming 10 top movies
            itemBuilder: (context, index) {
              return top_10(topRate: state.cubitetopmovie[index],); // Pass index to item
            },
          ),
        );

      }
      else if(state is TopRateError){
        return Text(state.toString());
      }

      else{
        return Center(child: CircularProgressIndicator());
      }
    });
    
   
  }
}