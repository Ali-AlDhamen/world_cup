import 'package:flutter/material.dart';
import 'package:world_cup/screens/important_details_screen.dart';

import '../constants/colors.dart';

class ImportantNews extends StatelessWidget {
  const ImportantNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: () {
          // nav push
          Navigator.pushNamed(context, ImportantNewsDetailsScreen.routeName);
        },
        child: Container(
          margin: const EdgeInsets.only(left: 15),
          height: 170,
          width: 240,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/nimar.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const Positioned(
          bottom: 20,
          left: 0,
          right: 10,
          child: Text("فرنسا تعلن استبعاد نكونكو من كأس العالم للإصابة",
              style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)))
    ]);
  }
}
