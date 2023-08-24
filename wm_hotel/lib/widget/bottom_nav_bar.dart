import 'package:flutter/material.dart';
import 'package:wm_hotel/utilities/ui_classes/appcolor.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.paste),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active_outlined),
          label: 'Notification',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
