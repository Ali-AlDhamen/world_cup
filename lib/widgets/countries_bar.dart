import 'package:flutter/material.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/widgets/country_avatar.dart';

class CountriesBar extends StatelessWidget {
  const CountriesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              margin: const EdgeInsets.only(right: 10 , left: 15),
              padding: const EdgeInsets.all(11),
              height: 45,
              width: 115,
              decoration: BoxDecoration(
                color: kPinkColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/images/flag7.png'),
                  ),
                  SizedBox(width: 10),
                  Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text(
                      "البرازيل",
                      style: TextStyle(
                        color: kWhiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )),
          const CountryAvatar("assets/images/flag6.png"),
          const CountryAvatar("assets/images/flag2.png"),
          const CountryAvatar("assets/images/flag4.png"),
          const CountryAvatar("assets/images/flag8.png"),
          const CountryAvatar("assets/images/flag9.png"),
        ],
      ),
    );
  }
}
