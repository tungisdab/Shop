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

class _HomeState extends State<Home> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final double screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount;
    if (screenWidth > 1000) {
      crossAxisCount = 5;
    } else if (screenWidth > 800) {
      crossAxisCount = 4;
    } else if (screenWidth > 600) {
      crossAxisCount = 3;
    } else if (screenWidth > 350) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 1;
    }

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
                  addAutomaticKeepAlives: true,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 10.h,
                    mainAxisSpacing: 10.h,
                  ),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      name: data[index].name,
                      path: data[index].path,
                      price: data[index].price,
                      sale: data[index].sale,
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
}

class ProductItem extends StatefulWidget {
  final String name;
  final String path;
  final String price;
  final String sale;

  const ProductItem({
    Key? key,
    required this.name,
    required this.path,
    required this.price,
    required this.sale,
  }) : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context); // Must call super.build for AutomaticKeepAliveClientMixin to work

    return LayoutBuilder(
      builder: (context, constraints) {
        double itemWidth = constraints.maxWidth;
        double itemHeight = constraints.maxHeight;

        double imageHeight = itemHeight * 0.5;
        double iconSize = itemHeight > itemWidth ? itemWidth * 0.1 : itemHeight * 0.1;
        double fontSize = itemHeight > itemWidth ? itemWidth * 0.095 : itemHeight * 0.095;

        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(3, 5),
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
                        height: imageHeight,
                        width: double.infinity,
                        child: Image.asset(widget.path, fit: BoxFit.cover),
                      ),
                    ),
                    Positioned(
                      top: 5.h,
                      left: 5.w,
                      child: Container(
                        height: iconSize,
                        width: iconSize,
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
                        widget.name,
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: fontSize,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        'đ: ${widget.price}',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: fontSize,
                          color: Colors.black,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/common/tag.png',
                            width: iconSize,
                          ),
                          Text(
                            ': ${widget.sale}%',
                            style: TextStyle(
                              fontSize: fontSize,
                              color: Colors.red,
                            ),
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
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
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
