import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class RowData extends StatelessWidget {
  final String? data1;
  final String? data2;
  final String? data3;
  final String? data4;
  final String? data5;
  const RowData(this.data1, this.data2, this.data3, this.data4 , this.data5, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
                                  children: [
                                    Text(
                                      data1 as String,
                                      style: GoogleFonts.ibmPlexSans(
                                          color: kWhiteColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      data2 as String,
                                      style: GoogleFonts.ibmPlexSans(
                                          color: kWhiteColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      data3 as String,
                                      style: GoogleFonts.ibmPlexSans(
                                          color: kWhiteColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      data4 as String,
                                      style: GoogleFonts.ibmPlexSans(
                                          color: kWhiteColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      data5 as String,
                                      style: GoogleFonts.ibmPlexSans(
                                          color: kWhiteColor,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                  ],
                                ),
                                Container(
                              margin: const EdgeInsets.only(top: 10 , bottom: 10 ),
                              height: 1,
                              width: 150,
                              color: kWhiteColor,
                            )
      ],
    );
  }
}