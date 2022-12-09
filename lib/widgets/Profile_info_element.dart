import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Auth_Repository/auth.dart';
import '../constants/colors.dart';

class ProfileInfoElement extends StatelessWidget {
  final IconData? avatar;
  final String? title;
  final String? subtitle;
  final String? update;
   ProfileInfoElement(
      {super.key,
      this.avatar,
      this.title,
      this.subtitle,
      this.update,
    });
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: 350,
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
                child: Icon(avatar, color: kWhiteColor),
              ),
              title: Text(title as String,
                  style: const TextStyle(
                      color: kWhiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
              subtitle: SizedBox(
                height: 30,
                child: TextField(
                  controller: controller,
                  style: GoogleFonts.ibmPlexSans(
                    color: kGrayColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: subtitle,
                      hintStyle: GoogleFonts.ibmPlexSans(
                        color: kGrayColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
              trailing: IconButton(
                onPressed: () async{
                  await Auth.updateInformation(
                      update as String, controller.text.trim());
                  controller.clear();
                },
                icon: const Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: kWhiteColor,
                ),
              ),
            )),
        const SizedBox(width: 250, child: Divider(color: kWhiteColor))
      ],
    );
  }
}
