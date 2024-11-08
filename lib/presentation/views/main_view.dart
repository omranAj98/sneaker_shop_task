import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:helloworld/core/constants/app_colors.dart';
import 'package:helloworld/core/constants/app_icons.dart';
import 'package:helloworld/presentation/controllers/Main_controller.dart';
import 'package:helloworld/presentation/pages/cart_page.dart';
import 'package:helloworld/presentation/pages/favorite_page.dart';
import 'package:helloworld/presentation/pages/home_page.dart';
import 'package:helloworld/presentation/pages/profile_page.dart';
import 'package:helloworld/presentation/widgets/wgt_bottom_navigation_bar.dart';

class MainView extends GetView<MainController> {
  final List<Widget> pages = [
    HomePage(),
    FavoritePage(),
    CartPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            bottomNavigationBar: WgtBottomNavigationBar(
              items: [
                BottomNavItem(icon: AppIcons.home, label: "Home"),
                BottomNavItem(icon: AppIcons.favorite, label: "Favorite"),
                BottomNavItem(icon: AppIcons.cart, label: "Cart"),
                BottomNavItem(icon: AppIcons.account, label: "Profile"),
              ],
              backgroundColor: AppColors.white,
              activeColor: AppColors.green,
              inactiveColor: AppColors.black,
            ),
            body: Obx(() => pages[controller.selectedIndex.value])));
  }
}
