import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/widgets/match_details_options.dart';
import 'package:world_cup/widgets/match_details_scores.dart';
import 'package:world_cup/widgets/match_score.dart';

class GroupDetailsScreen extends StatelessWidget {
  static const String routeName = "/group_details";
  const GroupDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBurgundyColor,
        appBar: AppBar(
          backgroundColor: kBurgundyColor,
          elevation: 0,
          title: const Text('المجموعة E'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: (30),
                        backgroundColor: kWhite20Color,
                        child: CircleAvatar(
                          radius: (18),
                          backgroundImage: AssetImage("assets/images/flag6.png"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ألمانيا",
                        style: GoogleFonts.sourceSansPro(
                          color: kWhiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "2 - 3",
                        style: GoogleFonts.ibmPlexSans(
                          color: kWhiteColor,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("9:00 مساءا",
                          style: GoogleFonts.ibmPlexSans(
                            color: kGrayColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      const CircleAvatar(
                        radius: (30),
                        backgroundColor: kWhite20Color,
                        child: CircleAvatar(
                          radius: (18),
                          backgroundImage: AssetImage("assets/images/flag8.png"),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "أسبانيا",
                        style: GoogleFonts.sourceSansPro(
                          color: kWhiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const MatchDetailsBar(),
              const SizedBox(
                height: 20,
              ),
              const MatchDetailsScores(),
              const SizedBox(
                height: 20,
              ),
              ListTile(
                trailing: const Text(
                  "مباريات أخرى",
                  style: TextStyle(
                      color: kWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                leading: Container(
                  width: 70,
                  height: 40,
                  alignment: Alignment.centerLeft,
                  child: Text("مشاهدة الكل",
                      style: GoogleFonts.ibmPlexSans(
                        color: kGrayColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const MatchScore(),
              const SizedBox(height: 15,),
              const MatchScore(),
              const SizedBox(height: 15,),
              const MatchScore(),
              const SizedBox(height: 15,),
              const MatchScore(),
            ],
          ),
        ));
  }
}
