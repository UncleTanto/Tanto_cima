import 'package:flutter/material.dart';
import 'package:movie_mvvm/core/models/genres.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.genresx});
  final Genres genresx;


  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
          Container(
          width: 100 ,
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(20),
          ),
            child: Text("${genresx.name}"),
              ),
        ],
      );
  }
}

