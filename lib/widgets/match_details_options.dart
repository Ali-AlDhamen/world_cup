import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MatchDetailsBar extends StatefulWidget {
  const MatchDetailsBar({super.key});

  @override
  State<MatchDetailsBar> createState() => _MatchDetailsBarState();
}

class _MatchDetailsBarState extends State<MatchDetailsBar> {
  bool btn1 = true;
  bool btn2 = false;
  bool btn3 = false;
  bool btn4 = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            setState(() {
              btn1 = false;
              btn2 = false;
              btn3 = true;
               btn4 = false;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: btn3 ? kPinkColor : kBurgundyColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            "متابعة حية",
            style: TextStyle(
              color: btn3 ? kWhiteColor : kDarkGrayColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              btn1 = false;
              btn2 = true;
              btn3 = false;
              btn4 = false;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: btn2 ? kPinkColor : kBurgundyColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            "التشكيل",
            style: TextStyle(
              color: btn2 ? kWhiteColor : kDarkGrayColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              btn1 = true;
              btn2 = false;
              btn3 = false;
               btn4 = false;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: btn1 ? kPinkColor : kBurgundyColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            "إحصائيات",
            style: TextStyle(
              color: btn1 ? kWhiteColor : kDarkGrayColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              btn1 = false;
              btn2 = false;
              btn3 = false;
               btn4 = true;
            });
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: btn4 ? kPinkColor : kBurgundyColor,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          child: Text(
            "ملخص",
            style: TextStyle(
              color: btn4 ? kWhiteColor : kDarkGrayColor,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
