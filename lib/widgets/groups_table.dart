import 'package:flutter/material.dart';

import 'country_table.dart';


class GroupsTables extends StatelessWidget {
  const GroupsTables({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
         CountryTable(),
              SizedBox(height: 30),
              CountryTable(),
              SizedBox(height: 30),
              CountryTable(),
              SizedBox(height: 30),
      ],
    );
  }
}