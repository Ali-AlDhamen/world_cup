import 'package:flutter/material.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/widgets/welcome_buttons.dart';
import 'package:world_cup/widgets/welcome_image.dart';
import 'package:world_cup/widgets/welcome_text.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = "/welcome";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBurgundyColor,
      body: Center(
        child: Column(children: const [
          SizedBox(height: 60),
          WelcomeImage(),
          SizedBox(height: 40),
          WelcomeText(),
          SizedBox(height: 40),
          WelcomeButtons()
        ]),
      ),
    );
  }
}
