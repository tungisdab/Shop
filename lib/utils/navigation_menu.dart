import 'package:app_shoes_ec/views/cart.dart';
import 'package:app_shoes_ec/views/home.dart';
import 'package:app_shoes_ec/views/notice.dart';
import 'package:app_shoes_ec/views/profile.dart';
import 'package:app_shoes_ec/views/search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15),
        child: Obx(
          () => Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: NavigationBar(
              indicatorColor: Colors.transparent,
              animationDuration: const Duration(milliseconds: 1000),
              selectedIndex: controller.selectedIndex.value,
              labelBehavior:
                  NavigationDestinationLabelBehavior.onlyShowSelected,
              backgroundColor: Colors.transparent,
              onDestinationSelected: (index) =>
                  controller.selectedIndex.value = index,
              destinations: [
                NavigationDestination(
                  icon: SizedBox(
                      height: 40,
                      child: Image.asset(
                        'assets/icons/nav/shoes.png',
                        fit: BoxFit.contain,
                      )),
                  label: 'Home',
                ),
                NavigationDestination(
                  icon: SizedBox(
                      height: 40,
                      child: Image.asset(
                        'assets/icons/nav/loupe.png',
                        fit: BoxFit.contain,
                      )),
                  label: 'Search',
                ),
                NavigationDestination(
                  icon: SizedBox(
                      height: 40,
                      child: Image.asset(
                        'assets/icons/nav/heart.png',
                        fit: BoxFit.contain,
                      )),
                  label: 'Fancy',
                ),
                NavigationDestination(
                  icon: SizedBox(
                      height: 40,
                      child: Image.asset(
                        'assets/icons/nav/shopping.png',
                        fit: BoxFit.contain,
                      )),
                  label: 'Cart',
                ),
                NavigationDestination(
                  icon: SizedBox(
                      height: 40,
                      child: Image.asset(
                        'assets/icons/nav/people.png',
                        fit: BoxFit.contain,
                      )),
                  label: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = <Widget>[
    const Home(),
    const Search(),
    const Notice(),
    const Cart(),
    const Profile(),
  ];
}
