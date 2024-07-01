import 'package:app_shoes_ec/components/sliver_appbar.dart';
import 'package:app_shoes_ec/models/product.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const RecipeDetailAppBar(),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(10.r),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: screenWidth > 600 ? 3 : 2,
                    childAspectRatio: screenWidth > 600 ? 0.8 : 0.7,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return items(
                      data[index].name,
                      data[index].path,
                      data[index].price,
                      data[index].sale,
                      screenHeight,
                      screenWidth,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget items(String name, String path, String price, String sale,
          double screenHeight, double screenWidth) =>
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(3, 5), // changes position of shadow
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  DottedBorder(
                    color: Colors.red.shade300,
                    strokeWidth: 2.h,
                    dashPattern: [10.h, 10.h],
                    strokeCap: StrokeCap.round,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10.r),
                    child: SizedBox(
                      height: screenHeight >= screenWidth
                          ? screenHeight * 0.14
                          : screenWidth * 0.14,
                      width: double.infinity,
                      child: Image.asset(
                        path,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Container(
                      height: 24.h,
                      width: 24.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.r),
                      ),
                      child: Image.asset(
                        "assets/icons/nav/heart.png",
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20.sp * (screenWidth > 600 ? 0.4: 1.0), // Adjust font size based on screen width
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      'đ: $price',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 20.sp * (screenWidth > 600 ? 0.4 : 1.0), // Adjust font size based on screen width
                        color: Colors.black,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/common/tag.png',
                          width: 20.sp * (screenWidth > 600 ? 0.4: 1.0),
                        ),
                        Text(
                          ': $sale%',
                          style: TextStyle(fontSize: 20.sp * (screenWidth > 600 ? 0.4: 1.0), color: Colors.red), // Adjust font size based on screen width
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}

final data = [
  Product(
      name: 'Air Force One 1',
      path: 'assets/images/z1.png',
      price: '1.501.000',
      sale: '11'),
  Product(
      name: 'Air Force One 2',
      path: 'assets/images/z2.png',
      price: '1.502.000',
      sale: '22'),
  Product(
      name: 'Air Force One 3',
      path: 'assets/images/z3.png',
      price: '1.503.000',
      sale: '33'),
  Product(
      name: 'Air Force One 4',
      path: 'assets/images/z4.png',
      price: '1.504.000',
      sale: '44'),
  Product(
      name: 'Air Force One 5',
      path: 'assets/images/z5.png',
      price: '1.505.000',
      sale: '55'),
  Product(
      name: 'Air Force One 6',
      path: 'assets/images/z6.png',
      price: '1.506.000',
      sale: '66'),
  Product(
      name: 'Air Force One 7',
      path: 'assets/images/z7.png',
      price: '1.507.000',
      sale: '77'),
  Product(
      name: 'Air Force One 8',
      path: 'assets/images/z8.png',
      price: '1.508.000',
      sale: '88'),
  Product(
      name: 'Air Force One 9',
      path: 'assets/images/z9.png',
      price: '1.509.000',
      sale: '99'),
  Product(
      name: 'Air Force One 11',
      path: 'assets/images/z10.png',
      price: '1.510.000',
      sale: '1'),
];
