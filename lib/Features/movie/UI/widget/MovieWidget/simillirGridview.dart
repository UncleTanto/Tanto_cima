import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/homeWidget/SmallMovieItem.dart';
import 'package:movie_mvvm/Features/movie/network/Similar/similar_cubit.dart';

import '../../../../../core/utils/service_locator.dart';
import '../../../data/repo/movieRepoImp.dart';
import '../../../network/Similar/similar_state.dart';



class simillerGrid extends StatefulWidget {
  const simillerGrid({super.key});

  @override
  State<simillerGrid> createState() => _simillerGridState();
}

class _simillerGridState extends State<simillerGrid> {





  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarCubit,SameState>(builder: (context,state){
        if(state is SameLoaded){
          return
            ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10, // Assuming 10 top movies
            itemBuilder: (context, index) {
              return SmallMovieItem(popularx: state.cubitesamemovie[index]);
            },
          );
          }
        else if (state is SameError){
          return Center(child: Text(state.toString()));
        }
        else{
          return const Center(child: CircularProgressIndicator());
        }

    });
  }
}
