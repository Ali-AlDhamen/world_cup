import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';
import 'country_column_data.dart';

class CountriesColumn extends StatelessWidget {
  const CountriesColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            "الفريق",
            style: GoogleFonts.ibmPlexSans(
                color: kWhiteColor, fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ),
        const CountryCell("  هولندا", "assets/images/flag10.png"),
        const CountryCell("     قطر", "assets/images/flag1.jpeg"),
        const CountryCell(" السنغال", "assets/images/flag11.png"),
        const CountryCell("الإكوادور", "assets/images/flag5.png"),
        const SizedBox(
          height: 2,
          width: 2,
          child: Text(""),
        ),
      ],
    );
  }
}
