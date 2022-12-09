import 'package:flutter/material.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/widgets/profile_info_element.dart';
import 'package:world_cup/widgets/profile_image.dart';
import 'package:world_cup/widgets/profile_options.dart';

import '../Auth_Repository/auth.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = "/profile";

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoading = true;
  var userDocument;

  void getData() async {
    final value = await Auth.getUserData();
    setState(() {
      userDocument = value;
    });

    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () async {
              await Auth.logout();
            },
          ),
          title: const Text("الملف الشخصي"),
          centerTitle: true,
          backgroundColor: kBurgundyColor,
          elevation: 0,
        ),
        backgroundColor: kBurgundyColor,
        body: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: kOrangeColor,
                ),
              )
            : Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 30.0, left: 30.0),
                  child: Column(
                    children: [
                      ProfileImage(
                          imageUrl: userDocument['image_url'],
                          name: userDocument['name']),
                      const SizedBox(height: 30),
                      const ProfileOptions(),
                      ProfileInfoElement(
                        avatar: Icons.person_outline_sharp,
                        title: "الاسم",
                        subtitle: userDocument['name'],
                        update: "name",
                      ),
                      ProfileInfoElement(
                          avatar: Icons.email_outlined,
                          title: "البريد الالكتروني",
                          subtitle: userDocument['email'],
                          update: "email",
                          ),
                      ProfileInfoElement(
                          avatar: Icons.local_phone_outlined,
                          title: "رقم الهاتف",
                          subtitle: userDocument['phone'],
                          update: "phone",
                          ),
                      ProfileInfoElement(
                          avatar: Icons.location_on_outlined,
                          title: "المدينة",
                          subtitle: userDocument['address'],
                          update: "address",
                          ),
                    ],
                  ),
                ),
              ));
  }
}
