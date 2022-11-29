import 'package:flutter/material.dart';

import '../constants/colors.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
          scrollDirection: Axis.vertical,
      
          children: [
            Container(
              width: 108,
              height: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kWhite20Color
              ),
              ),
             Container(
              width: 108,
              height: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kWhite20Color
              ),
              ),
               Container(
              width: 108,
              height: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kWhite20Color
              ),
              ),
               Container(
              width: 108,
              height: 115,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: kWhite20Color
              ),
              ),
              

          

         ],);
  }
}