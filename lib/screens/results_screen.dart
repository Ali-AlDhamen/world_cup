import 'package:flutter/material.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/widgets/country_table.dart';
import 'package:world_cup/widgets/results_options.dart';
import 'package:world_cup/widgets/rounds_bar.dart';


class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBurgundyColor,
      body: SingleChildScrollView(
          child: Container(
        margin: const EdgeInsets.only(top: 60.0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: const [
              ResultsOptionsBar(),
              SizedBox(height: 30),
              RoundsBar(),
              SizedBox(height: 30),
              CountryTable(),
              SizedBox(height: 30),
              CountryTable(),
              SizedBox(height: 30),
              CountryTable(),
              SizedBox(height: 30),
              
            ],
          ),
        ),
      )),
    );
  }
}
