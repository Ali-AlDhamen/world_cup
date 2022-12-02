import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MatchItem extends StatelessWidget {
  const MatchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding:
            const EdgeInsets.only(left: 36, top: 10, bottom: 10, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "الأحد 20 نوفمبر",
              style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              ">",
              style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      Stack(children: [
        Container(
            width: 320,
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), color: kWhite20Color),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 25,
                    height: 25,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/flag1.jpeg'),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "قطر",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text("1",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "vs",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text("-",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 13,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        "الإكوادور",
                        style: TextStyle(
                            color: kWhiteColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text("0",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    width: 25,
                    height: 25,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/flag5.png'),
                    ),
                  ),
                ],
              ),
            )),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
                color: kWhite20Color),
            width: 50,
            height: 60,
          ),
        ),
        const Positioned(
            top: 20,
            left: 10,
            child: Text(
              "تمت",
              style: TextStyle(
                  color: kBurgundyColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ))
      ])
    ]);
  }
}
