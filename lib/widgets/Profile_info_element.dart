import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProfileInfoElement extends StatelessWidget {
  final IconData? avatar;
  final String? title;
  final String? subtitle;
  const ProfileInfoElement({super.key, this.avatar, this.title, this.subtitle});


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
                      decoration: const BoxDecoration(
                        color: kWhite20Color,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: Icon(avatar , color: kWhiteColor),
                      ),
                    title: Text(title as String, style: const TextStyle(color: kWhiteColor, fontSize: 20, fontWeight: FontWeight.bold)),
                    subtitle: Text(subtitle as String, style: const TextStyle(color: kGrayColor, fontSize: 15, fontWeight: FontWeight.bold)),
                    trailing: const Icon(Icons.arrow_back_ios_new_outlined, color: kWhiteColor),
      
                  ),
                ),
                const SizedBox(
                  width: 250,
                  child: Divider( color: kWhiteColor))
    ],);
  }
}