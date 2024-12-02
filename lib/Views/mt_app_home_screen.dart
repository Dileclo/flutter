import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widget/banner.dart';
import 'package:flutter_application_1/Widget/my_icon_button.dart';
import 'package:iconsax/iconsax.dart';

class MtAppHomeScreen extends StatefulWidget {
  const MtAppHomeScreen({super.key});

  @override
  State<MtAppHomeScreen> createState() => _MtAppHomeScreenState();
}

class _MtAppHomeScreenState extends State<MtAppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [headerParts(), searchBar(), BannerToExplore()],
                ),
              )
            ],
          ),
        )));
  }

  Padding searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.search_normal),
          filled: true,
          fillColor: Colors.white,
          border: InputBorder.none,
          hintText: "Поиск",
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
          hintStyle: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }

  Row headerParts() {
    return Row(
      children: [
        const Text(
          "Что вы готовите\n сегодня?",
          style:
              TextStyle(fontSize: 32, fontWeight: FontWeight.bold, height: 1),
        ),
        const Spacer(),
        MyIconButton(icon: Iconsax.notification, pressed: () {})
      ],
    );
  }
}
