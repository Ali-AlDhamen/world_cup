import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CountryAvatar extends StatelessWidget {
  final String? image;
  const CountryAvatar( this.image, {super.key});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      child: CircleAvatar(
        
        radius: (23),
        backgroundColor: kWhite20Color,
        child: CircleAvatar(
          radius: (15),
          backgroundImage:  AssetImage(image as String),
         
        ),

      ),
    );
  }
}
