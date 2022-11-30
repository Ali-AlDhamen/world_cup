import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProfileInfoElement extends StatelessWidget {
  IconData? avatar;
  String? title;
  String? subtitle;
  ProfileInfoElement({super.key, this.avatar, this.title, this.subtitle});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          SizedBox(
                  width:350,
                  child: ListTile(
                    leading: Container(
                      height: 45,
                      width: 45,
                      child: Icon(avatar , color: kWhiteColor),
                      decoration: const BoxDecoration(
                        color: kWhite20Color,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      ),
                    title: Text(title as String, style: TextStyle(color: kWhiteColor, fontSize: 20, fontWeight: FontWeight.bold)),
                    subtitle: Text(subtitle as String, style: TextStyle(color: kGrayColor, fontSize: 15, fontWeight: FontWeight.bold)),
                    trailing: const Icon(Icons.arrow_back_ios_new_outlined, color: kWhiteColor),
      
                  ),
                ),
                Container(
                  width: 250,
                  child: const Divider( color: kWhiteColor))
    ],);
  }
}