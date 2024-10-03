import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movie_mvvm/core/shaqtest.dart';

import '../../../../../core/utils/constants.dart';

class ButtonsTab extends StatelessWidget {
  const ButtonsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return
      ButtonsTabBar(
        // center: true,
        width: 100.w,
        backgroundColor:BgPrimaryColor,
        unselectedBackgroundColor: BgPrimaryColor,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        labelStyle:
        TextStyle(color: RedColor, fontWeight: FontWeight.bold),
        tabs: [
          Tab(
            text: "About",
          ),
          Tab(
            text: "Similiarr",
          ),

        ],
      )
      ;
  }
}
