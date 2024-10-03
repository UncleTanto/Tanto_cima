import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/MovieWidget/MovieAbout.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/MovieWidget/MovieHeaderItem.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/MovieWidget/simillirGridview.dart';

import '../../../../../core/models/moviemodle.dart';
import '../../../network/Similar/similar_cubit.dart';
class TabsExpanded extends StatefulWidget {
  final MovieModel? popularx;

  const TabsExpanded({super.key,required this.popularx});

  @override
  State<TabsExpanded> createState() => _TabsExpandedState();
}

class _TabsExpandedState extends State<TabsExpanded> {
  @override
  void initState() {

    BlocProvider.of<SimilarCubit>(context).fetchtsimilarmovie(id: widget.popularx!.id!.toDouble());
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        children: <Widget>[
          Center(
            child: MovieAbout(popularx: widget.popularx,),
          ),
          Center(
            child: simillerGrid(),
          ),

        ],
      ),
    );
  }
}
