import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerData extends StatelessWidget {
  const PlayerData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("1",
            style: GoogleFonts.ibmPlexSans(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
        const SizedBox(
          width: 10,
        ),
        const CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage("assets/images/flag2.png"),
        ),
        const SizedBox(
          width: 10,
        ),
        Text("ليونيل ميسي",
            style: GoogleFonts.ibmPlexSans(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400)),
      ],
    );
  }
}