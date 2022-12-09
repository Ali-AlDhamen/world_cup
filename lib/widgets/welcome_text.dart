import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.only(left: 120),
            height: 50,
            width: 253,
            child: Text("كأس العالم",
                style: GoogleFonts.tajawal(
                  wordSpacing: 2,
                  fontSize: 40,
                  color: kWhiteColor,
                  fontWeight: FontWeight.bold,
                ))),
        Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(left: 110),
            height: 50,
            width: 253,
            child: Text("قطر 2022",
                style: GoogleFonts.tajawal(
                  wordSpacing: 2,
                  fontSize: 40,
                  color: kWhiteColor,
                  fontWeight: FontWeight.bold,
                ))),
        Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(left: 120),
          child: Text("تغطية لأحداث كأس العالم",
              style: GoogleFonts.ibmPlexSans(
                wordSpacing: 2,
                fontSize: 16,
                color: kGrayColor,
                fontWeight: FontWeight.bold,
              )),
        ),
        Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(left: 55),
          child: Text("ومتابعة حية لجميع المباريات والفعاليات",
              style: GoogleFonts.ibmPlexSans(
                wordSpacing: 2,
                fontSize: 16,
                color: kGrayColor,
                fontWeight: FontWeight.bold,
              )),
        ),
        Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(left: 220),
          child: Text("أولا بأول",
              style: GoogleFonts.ibmPlexSans(
                wordSpacing: 2,
                fontSize: 16,
                color: kGrayColor,
                fontWeight: FontWeight.bold,
              )),
        ),
      ],
    );
  }
}
