import 'package:flutter/material.dart';

import '../constants/colors.dart';

class RoundsBar extends StatefulWidget {
  const RoundsBar({super.key});

  @override
  State<RoundsBar> createState() => _RoundsBarState();
}

class _RoundsBarState extends State<RoundsBar> {
  bool btn1 = true;
  bool btn2 = false;
  bool btn3 = false;
  bool btn4 = false;
  bool btn5 = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  btn1 = true;
                  btn2 = false;
                  btn3 = false;
                  btn4 = false;
                  btn5 = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: btn1 ? kOrangeColor : kWhite20Color,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "المجموعات",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  btn1 = false;
                  btn2 = true;
                  btn3 = false;
                  btn4 = false;
                  btn5 = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: btn2 ? kOrangeColor : kWhite20Color,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "دور ال 16",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  btn1 = false;
                  btn2 = false;
                  btn3 = true;
                  btn4 = false;
                  btn5 = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: btn3 ? kOrangeColor : kWhite20Color,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "دور ال 8",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  btn1 = false;
                  btn2 = false;
                  btn3 = false;
                  btn4 = true;
                  btn5 = false;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: btn4 ? kOrangeColor : kWhite20Color,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "قبل النهائي",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            height: 30,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  btn1 = false;
                  btn2 = false;
                  btn3 = false;
                  btn4 = false;
                  btn5 = true;
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: btn5 ? kOrangeColor : kWhite20Color,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                "النهائي",
                style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
