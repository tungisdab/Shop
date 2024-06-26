import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 36,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 50,
                        child: Image.asset(
                          'assets/icons/common/appicon.png',
                        )),
                    const SizedBox(
                      width: 3,
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: 40,
                            child: Image.asset(
                              'assets/icons/flags/spain.png',
                              fit: BoxFit.contain,
                            )),
                        const SizedBox(
                          width: 10,
                        ),
                        DottedBorder(
                          color: Colors.red.shade300,
                          strokeWidth: 2,
                          dashPattern: const [8, 8],
                          strokeCap: StrokeCap.round,
                          borderType: BorderType.RRect,
                          radius: const Radius.circular(10),
                          child: SizedBox(
                              height: 40,
                              child: Image.asset(
                                'assets/icons/nav/notification.png',
                                fit: BoxFit.contain,
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    item('assets/images/z1.png', 'Air Force One 1', '4.5', '5',
                        '1.500.000', '20'),
                    item('assets/images/z2.png', 'Air Force One 2', '4.8', '4',
                        '1.600.000', '22'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    item('assets/images/z3.png', 'Air Force One 3', '4.5', '2',
                        '1.700.000', '34'),
                    item('assets/images/z4.png', 'Air Force One 4', '4.8', '6',
                        '2.500.000', '10'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    item('assets/images/z5.png', 'Air Force One', '4.5', '5',
                        '1.500.000', '20'),
                    item('assets/images/z6.png', 'Air Force One', '4.5', '5',
                        '1.500.000', '20'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    item('assets/images/z7.png', 'Air Force One', '4.5', '5',
                        '1.500.000', '20'),
                    item('assets/images/z8.png', 'Air Force One', '4.5', '5',
                        '1.500.000', '20'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    item('assets/images/z9.png', 'Air Force One', '4.5', '5',
                        '1.500.000', '20'),
                    item('assets/images/z10.png', 'Air Force One', '4.5', '5',
                        '1.500.000', '20'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    item('assets/images/z11.png', 'Air Force One', '4.5', '5',
                        '1.500.000', '20'),
                    item('assets/images/z12.png', 'Air Force One', '4.5', '5',
                        '1.500.000', '20'),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          )),
    );
  }

  Widget item(String path, String name, String start, String color,
          String price, String sale) =>
      Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red.shade300,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DottedBorder(
                color: Colors.red.shade300,
                strokeWidth: 1,
                dashPattern: const [10, 10],
                strokeCap: StrokeCap.round,
                borderType: BorderType.RRect,
                radius: const Radius.circular(10),
                child: SizedBox(
                  height: 200,
                  width: 180,
                  child: Image.asset(
                    path,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/icons/common/star.png',
                              height: 16,
                            ),
                            Image.asset(
                              'assets/icons/common/star.png',
                              height: 16,
                            ),
                            Image.asset(
                              'assets/icons/common/star.png',
                              height: 16,
                            ),
                            Image.asset(
                              'assets/icons/common/star.png',
                              height: 16,
                            ),
                            Image.asset(
                              'assets/icons/common/star.png',
                              height: 16,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          start,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/common/colorss.png',
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          ': $color colors',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/common/dollar2.png',
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          ': $price',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/common/shopping.png',
                          height: 20,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          ': $sale%',
                          style:
                              const TextStyle(fontSize: 18, color: Colors.red),
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
