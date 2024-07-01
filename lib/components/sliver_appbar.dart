import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecipeDetailAppBar extends StatelessWidget {
  const RecipeDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 275.0.h,
      backgroundColor: Colors.white,
      foregroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      elevation: 0.0,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 50.h),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Image.asset(
              'assets/images/bg3.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Image.asset('assets/icons/common/menu.png', height: 10,),
      ),
      actions: [
        IconButton(
          icon: Image.asset(
            "assets/icons/common/bell.png",
          ),
          onPressed: () {},
        ),
        // IconButton(
        //   icon: Image.asset(
        //     "assets/icons/nav/shopping.png",
        //   ),
        //   onPressed: () {},
        // ),
      ],
      floating: true,
      snap: true,
    );
  }
}
