import 'package:flutter/material.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/widgets/Profile_info_element.dart';
import 'package:world_cup/widgets/profile_image.dart';
import 'package:world_cup/widgets/profile_options.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBurgundyColor,
        body: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 60.0),
            child: Column(
              children: const [
                ProfileImage(),
                SizedBox(height: 30),
                ProfileOptions(),
                ProfileInfoElement(
                  avatar: Icons.person_outline_sharp,
                  title: "الاسم",
                  subtitle: "د. علي الضامن",
                ),
                ProfileInfoElement(
                    avatar: Icons.email_outlined,
                    title: "البريد الالكتروني",
                    subtitle: "ali77dhamen@hotmail.com"),
                ProfileInfoElement(
                    avatar: Icons.local_phone_outlined,
                    title: "رقم الهاتف",
                    subtitle: "0505050505"),
                ProfileInfoElement(
                    avatar: Icons.location_on_outlined,
                    title: "المدينة",
                    subtitle: "السعودية، الشرقية"),
              ],
            ),
          ),
        ));
  }
}
