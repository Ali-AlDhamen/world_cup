import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class ImportantNews extends StatelessWidget {
  const ImportantNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: () {
          // nav push
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return const ImportantNewsDetails();
            },
          ));
        },
        child: Container(
          margin: const EdgeInsets.only(left: 15),
          height: 170,
          width: 240,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              'assets/images/nimar.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      const Positioned(
          bottom: 20,
          left: 0,
          right: 10,
          child: Text("فرنسا تعلن استبعاد نكونكو من كأس العالم للإصابة",
              style: TextStyle(
                  color: kWhiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold)))
    ]);
  }
}

class ImportantNewsDetails extends StatelessWidget {
  const ImportantNewsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: kWhiteColor,
            ),
          ),
        ),
        backgroundColor: kBurgundyColor,
        body: Column(children: [
          Expanded(
            flex: 3,
            child: SizedBox(
                width: double.infinity,
                child: Hero(
                  tag: "11",
                  child: ClipRRect(
                    // border radius left bottom and right bottom
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),

                    child: Image.asset(
                      'assets/images/nimar.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const SizedBox(
                  width: 270,
                  height: 46,
                  child: Text(
                    "مواجهة ودية بين منتخب الإمارات ونظيره الأرجنتيني",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "42",
                          style: TextStyle(color: kGrayColor),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.comment_outlined,
                          color: kGrayColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "305",
                          style: TextStyle(color: kGrayColor),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.favorite_border_rounded,
                          color: kGrayColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "1403",
                          style: TextStyle(color: kGrayColor),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.remove_red_eye_outlined,
                          color: kGrayColor,
                        ),
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          "أحمد محمد",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "15 نوفمبر 2022",
                          style: TextStyle(
                              color: kGrayColor,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/luffy.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              flex: 1,
              child: SizedBox(
                width: 320,
                height: 150,
                child: Text(
                  "أعلن ليونيل سكالوني المدير الفني للمنتخب الأرجنتيني قائمة منتخب بلاده استعدادا لمنافسات كأس العالم 2022، والمقرر إقامته خلال شهري نوفمبر وديسمبر في قطر.",
                  textAlign: TextAlign.right,
                  style: GoogleFonts.ibmPlexSans(
                      color: kWhiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ]));
  }
}
