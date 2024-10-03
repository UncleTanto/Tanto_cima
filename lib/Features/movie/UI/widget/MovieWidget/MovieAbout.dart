import 'package:flutter/material.dart';

import '../../../../../core/models/moviemodle.dart';
class MovieAbout extends StatelessWidget {
  final MovieModel? popularx;

  const MovieAbout({super.key,required this.popularx});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10)
      ,child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Genre:"),
              Text("${popularx?.genreIds}"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Year:"),
              Text("${popularx?.releaseDate}"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Country:"),
              Text("${popularx?.originalLanguage}"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("vote Average:"),
              Text("${popularx?.voteAverage}"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("overview:"),
              Text("${popularx?.voteCount}"),
            ],
          ),
        ],
      ),
    );
  }
}
