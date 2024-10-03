import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/MovieWidget/MovieDetialsMiddlesection.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/MovieWidget/MovieHeaderItem.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/MovieWidget/Tabsexpanded.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/MovieWidget/buttonstabBar.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/MovieWidget/simillirGridview.dart';

import '../../../core/models/moviemodle.dart';
import '../../../core/utils/service_locator.dart';
import '../data/repo/movieRepoImp.dart';
import '../network/Similar/similar_cubit.dart';


class Moviepage extends StatefulWidget {
  Moviepage({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Moviepage> {

  @override
  Widget build(BuildContext context) {
    final MovieModel? popularMovie = GoRouterState.of(context).extra! as MovieModel?;
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              MovieHeaderItem(popularx: popularMovie),
              movieName(popularx: popularMovie),
              ButtonsTab(),
              TabsExpanded(popularx: popularMovie),
            ],
          ),
        ),
      ),
    );
  }
}