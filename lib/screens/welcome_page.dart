import 'package:flutter/material.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_cup/screens/home_screen.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = "/welcome";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBurgundyColor,
      body: Center(
        child: Column(children: [
          const SizedBox(height: 60),
          Stack(children: [
            Positioned(
              left: 50,
              bottom: 30,
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kPinkColor,
                ),
                margin: const EdgeInsets.only(top: 100),
              ),
            ),
            Positioned(
              child: Container(
                height: 400,
                width: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/HotPot.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ]),
          const SizedBox(height: 40),
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
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {},
                child: Text(
                  "مستخدم جديد",
                  style: GoogleFonts.ibmPlexSans(
                    fontSize: 18,
                    color: kWhiteColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: kWhiteColor,
                ),
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, HomeScreen.routeName);
                  },
                  child: Text(
                    "تسجيل الدخول",
                    style: GoogleFonts.ibmPlexSans(
                      fontSize: 18,
                      color: kBurgundyColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
