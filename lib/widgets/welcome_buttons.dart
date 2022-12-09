import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_cup/screens/login_screen.dart';

import '../constants/colors.dart';
import '../screens/register_screen.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            Navigator.pushReplacementNamed(context, RegisterScreen.routeName);
          },
          child: Text(
            "مستخدم جديد",
            style: GoogleFonts.ibmPlexSans(
              fontSize: 18,
              color: kWhiteColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Container(
          height: 50,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: kWhiteColor,
          ),
          child: TextButton(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(Colors.transparent),
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, LoginScreen.routeName);
            },
            child: Text(
              "تسجيل الدخول",
              style: GoogleFonts.ibmPlexSans(
                fontSize: 18,
                color: kBurgundyColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
