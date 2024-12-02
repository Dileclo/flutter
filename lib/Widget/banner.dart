import 'package:flutter/material.dart';

class BannerToExplore extends StatelessWidget {
  const BannerToExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.green),
      child: Stack(
        children: [
          Positioned(
              top: 30,
              left: 15,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Приготовьте лучшие\n блюда дома",
                      style: TextStyle(
                          height: 1.1,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0,
                            padding: EdgeInsets.symmetric(horizontal: 33)),
                        onPressed: () {},
                        child: const Text(
                          "Explore",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ))
                  ])),
          Positioned(
            top: 0,
            bottom: 0,
            right: -20,
            child: Image.network("https://pngimg.com/d/chef_PNG190.png"),
          )
        ],
      ),
    );
  }
}
