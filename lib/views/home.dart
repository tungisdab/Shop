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
        child: Center(
          child: DottedBorder(
            color: Colors.red,
            strokeWidth: 2,
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            padding: const EdgeInsets.all(6),
            child: SizedBox(
              width: 200,
              height: 200,
              child: Image.asset('assets/icons/cart/shopping-cart.png'),
            ),
          ),
        ),
      ),
    );
        
  }
}
