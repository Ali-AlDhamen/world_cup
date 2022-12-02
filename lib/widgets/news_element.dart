import 'package:flutter/material.dart';

import '../constants/colors.dart';

class NewsElement extends StatelessWidget {
  const NewsElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: ListTile(
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          width: 66,
          height: 66,
          child: Image.asset(
            'assets/images/nimar.png',
            fit: BoxFit.cover,
          ),
        ),
        title: const Text(
          "قائمة البرازيل لكأس العالم 2022: من انضم إلى نيمار وفينسيوس جونيور ورافينيا؟",
          style: TextStyle(
              color: kWhiteColor, fontSize: 14, fontWeight: FontWeight.bold),
        ),
        subtitle: const Text('الإثنين - 07 نوفمبر 2022 - 18:49',
            style: TextStyle(
                color: kGrayColor, fontSize: 12, fontWeight: FontWeight.bold)),
        trailing:
            const Icon(Icons.bookmark_outline_rounded, color: kWhiteColor),
      ),
    );
  }
}
