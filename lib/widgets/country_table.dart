import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_cup/widgets/countries_column.dart';
import 'package:world_cup/widgets/row_data.dart';

import '../constants/colors.dart';


class CountryTable extends StatelessWidget {
  const CountryTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children:[ const ListTile(
                  leading: Text("المجموعة A",
                      style: TextStyle(
                          color: kWhiteColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  trailing: Icon(Icons.arrow_back_ios_new_outlined,
                      color: kWhiteColor)),
              Container(
                  padding:
                      const EdgeInsets.only(top: 20, bottom: 20, right: 20),
                  height: 235,
                  width: 320,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kWhite20Color,
                  ),
                  child: Row(
                    children: [
                      const CountriesColumn(),
                      const SizedBox(
                        width: 80,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 6.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "ف",
                                  style: GoogleFonts.ibmPlexSans(
                                      color: kWhiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "ت",
                                  style: GoogleFonts.ibmPlexSans(
                                      color: kWhiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "له",
                                  style: GoogleFonts.ibmPlexSans(
                                      color: kWhiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "عليه",
                                  style: GoogleFonts.ibmPlexSans(
                                      color: kWhiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "نقاط",
                                  style: GoogleFonts.ibmPlexSans(
                                      color: kWhiteColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                              ],
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 10, bottom: 10),
                              height: 1,
                              width: 150,
                              color: kWhiteColor,
                            ),
                            const RowData("1", "1", "3", "1", "4"),
                            const RowData("1", "0", "2", "3", "3"),
                            const RowData("0", "2", "1", "1", "2"),
                            const RowData("0", "1", "1", "2", "1"),
                          ],
                        ),
                      )
                    ],
                  )),]);
  }
}