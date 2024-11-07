import 'package:flutter/material.dart';
import 'package:helloworld/core/constants/app_colors.dart';
import 'package:helloworld/presentation/pages/home_page.dart';
import 'package:helloworld/presentation/widgets/wgt_bottom_navigation_bar.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: WgtBottomNavigationBar(
        items: [
          BottomNavItem(icon: Icons.home, label: "Home"),
        ],
        backgroundColor: AppColors.white,
        activeColor: AppColors.green,
        inactiveColor: AppColors.black,
      ),
      body: HomePage(),
    );
  }
}
