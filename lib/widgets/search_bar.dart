import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320,
        height: 55,
        margin: const EdgeInsets.only(top: 70),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kWhite20Color,
        ),
        child: const Padding(
          padding: EdgeInsets.only(top: 8),
          child: SizedBox(
            width: 320,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'البحث عن الفرق والمباريات واللاعبين',
                hintStyle: TextStyle(
                    color: kDarkGrayColor,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
                prefixIcon: Icon(Icons.search, color: kDarkGrayColor),
              ),
            ),
          ),
        ));
  }
}
