import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class CountryCell extends StatelessWidget {
  final String? countryName;
  final String? countryFlag;
  const CountryCell(this.countryName, this.countryFlag, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage(countryFlag as String),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          countryName as String,
          style: GoogleFonts.ibmPlexSans(
              color: kWhiteColor, fontSize: 12, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
