import 'package:flutter/material.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/screens/group_details_screen.dart';
import 'package:world_cup/widgets/match_item.dart';

class MainScreen extends StatelessWidget {
  static const String routeName = "/main";
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBurgundyColor,
        appBar: AppBar(
          centerTitle: false,
          title: const Text('متابعة حية'),
          backgroundColor: kBurgundyColor,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications_none_rounded),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: 165,
                  width: 320,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: kOrangeColor),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20, left: 220),
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: kWhiteColor,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "فرنسا",
                            style: TextStyle(
                                color: kBurgundyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                        width: 160,
                        height: 70,
                        margin: const EdgeInsets.only(top: 20, left: 110),
                        child: const Text(
                          "فرنسا أبطال كأس العالم روسيا 2018",
                          style: TextStyle(
                              color: kWhiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: -10,
                    child: Container(
                      margin: const EdgeInsets.only(left: 2),
                      width: 196,
                      height: 200,
                      child: Image.asset("assets/images/mam.png"),
                    ))
              ]),

              const SizedBox(
                height: 30,
              ),
              // scrollable Row
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, GroupDetailsScreen.routeName);
                      },
                      child: Container(
                        width: 108,
                        height: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: kWhite20Color),
                        child: Column(
                          children: [
                            Container(
                                margin: const EdgeInsets.only(top: 10),
                                width: 50,
                                height: 50,
                                child: const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/images/flag1.jpeg'),
                                )),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text(
                                "المجموعة A",
                                style: TextStyle(
                                    color: kWhiteColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 108,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: kWhite20Color),
                      child: Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/flag2.png'),
                              )),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              "المجموعة C",
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 108,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: kWhite20Color),
                      child: Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/flag3.png'),
                              )),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              "المجموعة B",
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: 108,
                      height: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: kWhite20Color),
                      child: Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              width: 50,
                              height: 50,
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/flag4.png'),
                              )),
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: const Text(
                              "المجموعة D",
                              style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              const MatchItem(),
              const MatchItem(),
              const MatchItem(),
              const MatchItem(),
            ],
          ),
        ));
  }
}
