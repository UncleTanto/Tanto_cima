import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/homeWidget/CategoryList.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/homeWidget/NowPlayingList.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/homeWidget/MostPopular.dart';
import 'package:movie_mvvm/Features/movie/UI/widget/homeWidget/top10List.dart';
import 'package:movie_mvvm/Features/splash/splashscreen.dart';


class Home_Page extends StatelessWidget {
  const Home_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:
        CustomScrollView(slivers: [
          SliverToBoxAdapter(
            child: top_10_List(),
          ),//top10
          SliverToBoxAdapter(child: SizedBox(height: 30.h,)),
          // SliverToBoxAdapter(
          //   child: Categorylist(),
          // ),//cat
          SliverToBoxAdapter(child: SizedBox(height: 30.h,)),
          SliverToBoxAdapter(child:
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Most Popular"),
                InkWell(
                    onTap:(){},
                    child: Text("see All")),
              ],
            ),
          )),
          SliverToBoxAdapter(
            child: MostPopular(),
          ),//Most Popular
          SliverToBoxAdapter(child: SizedBox(height: 30.h,)),
          SliverToBoxAdapter(child:
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Now Playing"),
                InkWell(
                    onTap:(){},
                    child: Text("see All")),
              ],
            ),
          )),
          SliverToBoxAdapter(
            child: NowPlayinglist(),
          ),//Most Popular
          SliverToBoxAdapter(child: SizedBox(height: 30.h,)),
        ],)
      ),
    );
  }
}
