import 'package:flutter/material.dart';

import '../constants/colors.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: 50,
        bottom: 30,
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kPinkColor,
          ),
          margin: const EdgeInsets.only(top: 100),
        ),
      ),
      Positioned(
        child: Container(
          height: 400,
          width: 400,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/HotPot.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      )
    ]);
  }
}
