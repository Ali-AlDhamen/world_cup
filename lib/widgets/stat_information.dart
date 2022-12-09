import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/widgets/player_data.dart';

import '../models/player.dart';

class StatInformation extends StatelessWidget {
  const StatInformation({super.key});

  @override
  Widget build(BuildContext context) {
    List<Player> players = [
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
      Player("1", "ليونيل ميسي", "assets/images/flag2.png", "5"),
    ];

    return Column(
      children: [
        const ListTile(
          title: Text(
            '#   اللاعب',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          ),
          trailing: Text(
            'الأهداف',
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ),
        const Divider(
          color: Colors.white,
          thickness: 1,
        ),
        ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          itemCount: players.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(
                bottom: 10,
              ),
              alignment: Alignment.center,
              width: 320,
              height: 50,
              decoration: BoxDecoration(
                color: kWhite20Color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: const PlayerData(),
                trailing: Text(
                  players[index].playerPoints,
                  style: GoogleFonts.ibmPlexSans(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
