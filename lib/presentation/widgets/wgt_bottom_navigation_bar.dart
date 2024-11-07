import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:helloworld/presentation/controllers/Main_controller.dart';

class WgtBottomNavigationBar extends GetView<MainController> {
  final List<BottomNavItem> items;
  final Color backgroundColor;
  final Color activeColor;
  final Color inactiveColor;

  WgtBottomNavigationBar({
    Key? key,
    required this.items,
    this.backgroundColor = Colors.white,
    this.activeColor = Colors.blue,
    this.inactiveColor = Colors.grey,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final item = items[index];
          final isSelected = controller.selectedIndex.value == index;
          return GestureDetector(
            onTap: () => controller.changeTab(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: isSelected ? activeColor : backgroundColor,
                    borderRadius: BorderRadius.circular(
                        100), // Apply the border radius here
                  ),
                  height: 30,
                  width: 30,
                  child: Icon(
                    item.icon,
                    color: isSelected ? backgroundColor : activeColor,
                    size: 24,
                  ),
                ),
                SizedBox(height: 4),
                isSelected
                    ? Text(
                        item.label,
                        style: TextStyle(
                          color: activeColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    : SizedBox.shrink(), // Return nothing when not selected
              ],
            ),
          );
        }),
      ),
    );
  }
}

class BottomNavItem {
  final IconData icon;
  final String label;

  BottomNavItem({
    required this.icon,
    required this.label,
  });
}
