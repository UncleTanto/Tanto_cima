import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/homeWidget/Categoryitem.dart';

import '../../../network/Genres/genres_cubit.dart';
import '../../../network/Genres/genres_state.dart';



class Categorylist extends StatelessWidget {
  const Categorylist({super.key});

  @override
  Widget build(BuildContext context) {
    return
      BlocBuilder<GenresCubit,GenresState>(builder: (context, state){
      if(state is GenresLoaded )
        {
       return   SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.cubiteGenres.length, // Assuming 10 top movies
              itemBuilder: (context, index) {
                return CategoryItem(genresx: state.cubiteGenres[index]);
              },
            ),
          );

        }
      else if(state is GenresError){
        return Text(state.toString());
      }

      else{
        return Center(child: CircularProgressIndicator());
      }
    });
  }
}


