import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class MatchDetailsScores extends StatelessWidget {
  const MatchDetailsScores({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text("8",
                style: GoogleFonts.ibmPlexSans(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 13,
            ),
            Text("22",
                style: GoogleFonts.ibmPlexSans(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 13,
            ),
            Text("42",
                style: GoogleFonts.ibmPlexSans(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 13,
            ),
            Text("3",
                style: GoogleFonts.ibmPlexSans(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 13,
            ),
            Text("8",
                style: GoogleFonts.ibmPlexSans(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
        Column(
          children: [
            Text("التسديدات",
                style: GoogleFonts.ibmPlexSans(
                  color: kGrayColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
            const SizedBox(
              height: 13,
            ),
            Text("الهجمات",
                style: GoogleFonts.ibmPlexSans(
                  color: kGrayColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
            const SizedBox(
              height: 13,
            ),
            Text("الاستحواذ %",
                style: GoogleFonts.ibmPlexSans(
                  color: kGrayColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                SizedBox(
                  height: 16,
                  width: 10,
                  child:
                      Image.asset("assets/images/card.png", fit: BoxFit.cover),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text("بطاقة",
                    style: GoogleFonts.ibmPlexSans(
                      color: kGrayColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Text("ضربات ركنية",
                style: GoogleFonts.ibmPlexSans(
                  color: kGrayColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                )),
          ],
        ),
        Column(
          children: [
            Text("12",
                style: GoogleFonts.ibmPlexSans(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 13,
            ),
            Text("29",
                style: GoogleFonts.ibmPlexSans(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 13,
            ),
            Text("58",
                style: GoogleFonts.ibmPlexSans(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 13,
            ),
            Text("5",
                style: GoogleFonts.ibmPlexSans(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
            const SizedBox(
              height: 13,
            ),
            Text("7",
                style: GoogleFonts.ibmPlexSans(
                  color: kWhiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                )),
          ],
        )
      ],
    );
  }
}
