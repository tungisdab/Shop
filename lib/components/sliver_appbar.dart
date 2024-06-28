import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RecipeDetailAppBar extends StatelessWidget {
  const RecipeDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 275.0,
      backgroundColor: Colors.white,
      elevation: 0.0,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)
              
            ),
            child: Image.asset(
              'assets/images/bg.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      // bottom: PreferredSize(
      //   preferredSize: const Size.fromHeight(0.0),
      //   child: Container(
      //     height: 15.0,
      //     alignment: Alignment.center,
      //     decoration: const BoxDecoration(
      //       color: Colors.white,
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(32.0),
      //         topRight: Radius.circular(32.0),
      //       ),
      //     ),
      //     child: Container(
      //       width: 40.0,
      //       height: 5.0,
      //       decoration: BoxDecoration(
      //         color: Colors.red,
      //         borderRadius: BorderRadius.circular(100.0),
      //       ),
      //     ),
      //   ),
      // ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Image.asset('assets/icons/nav/shoes.png'),
      ),
      // title:const Text(
      //   'Shoe shop'
      // ),
      actions: [
        IconButton(
          icon: const Icon(Icons.favorite_border, size: 46,),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.shopping_cart, size: 46,),
          onPressed: () {},
        ),],
      floating: true,
      snap: true,
    );
  }
}