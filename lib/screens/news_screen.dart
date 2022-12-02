import 'package:flutter/material.dart';
import 'package:world_cup/widgets/countries_bar.dart';
import 'package:world_cup/widgets/important_news.dart';
import 'package:world_cup/widgets/news_element.dart';

import '../constants/colors.dart';
import '../widgets/important_news_bar.dart';
import '../widgets/search_bar.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBurgundyColor,
      body: SingleChildScrollView(
        child: Column(children: const [
          SearchBar(),
          SizedBox(
            height: 20,
          ),
          CountriesBar(),
          SizedBox(
            height: 20,
          ),
          NewsElement(),
          NewsElement(),
          NewsElement(),
          NewsElement(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: SizedBox(
              height: 25,
              width: double.infinity,
              child: Text(
                "أخبار هامة",
                style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          ImportantNewsBar(),
        ]),
      ),
    );
  }
}
