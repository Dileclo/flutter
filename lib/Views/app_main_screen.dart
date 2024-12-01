import "package:flutter/material.dart";
import "package:iconsax/iconsax.dart";

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconSize: 28,
          currentIndex: selectedIndex,
          selectedItemColor: Colors.grey[800],
          unselectedItemColor: Colors.grey,
          onTap: (index) => setState(() => selectedIndex = index),
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle:
              TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
          unselectedLabelStyle:
              TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          items: [
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 0 ? Iconsax.home5 : Iconsax.home_1),
                label: "Главная"),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 0 ? Iconsax.heart5 : Iconsax.heart),
                label: "Любимые"),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 0
                    ? Iconsax.calendar5
                    : Iconsax.calendar_1),
                label: "План питания"),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 0
                    ? Iconsax.setting_21
                    : Iconsax.setting_2),
                label: "Настройки"),
          ]),
    );
  }
}
