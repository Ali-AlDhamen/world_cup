import 'package:flutter/material.dart';
import 'package:world_cup/widgets/countries_bar.dart';
import 'package:world_cup/widgets/news_element.dart';

import '../constants/colors.dart';
import '../widgets/search_bar.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBurgundyColor,
      body: Center(
        child: Column(children:  const [
          SearchBar(),
          SizedBox(height: 20,),
          CountriesBar(),
          SizedBox(height: 20,),
         NewsElement(),
         NewsElement(),
         NewsElement(),
         NewsElement(),
          
         
        ]),
      ),
    );
  }
}
