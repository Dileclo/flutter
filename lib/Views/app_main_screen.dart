import "package:flutter/material.dart";
import "package:flutter_application_1/Views/mt_app_home_screen.dart";
import "package:iconsax/iconsax.dart";

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  int selectedIndex = 0;
  late final List<Widget> page;
  @override
  void initState() {
    page = [
      MtAppHomeScreen(),
      navBarPage(Iconsax.heart5),
      navBarPage(Iconsax.calendar5),
      navBarPage(Iconsax.setting_21),
    ];
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: page[selectedIndex],
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
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),
          unselectedLabelStyle:
              const TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
          items: [
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 0 ? Iconsax.home5 : Iconsax.home_1),
                label: "Главная"),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 1 ? Iconsax.heart5 : Iconsax.heart),
                label: "Любимые"),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 2
                    ? Iconsax.calendar5
                    : Iconsax.calendar_1),
                label: "План питания"),
            BottomNavigationBarItem(
                icon: Icon(selectedIndex == 3
                    ? Iconsax.setting_21
                    : Iconsax.setting_2),
                label: "Настройки"),
          ]),
    );
  }

  navBarPage(iconName) {
    return Center(
      child: Icon(
        iconName,
        size: 100,
        color: Colors.grey,
      ),
    );
  }
}
