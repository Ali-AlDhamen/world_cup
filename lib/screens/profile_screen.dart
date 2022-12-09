import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/widgets/Profile_info_element.dart';
import 'package:world_cup/widgets/profile_image.dart';
import 'package:world_cup/widgets/profile_options.dart';

import '../Auth_Repository/auth.dart';

class ProfileScreen extends StatefulWidget {
  static const String routeName = "/profile";

  ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isLoading = true;
  var userDocument;

  Future<void> getData() async {
    final value = await Auth.getUserData();
    setState(() {
      userDocument = value;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
    // wait 0.5s
    Future.delayed(const Duration(milliseconds: 500), () {
      // 5s over, navigate to a new page
      setState(() {
        isLoading = false;
      });
    });
   
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
                  margin: const EdgeInsets.only(top: 30.0 , left: 30.0),
                  child: Column(
                    children: [
                      ProfileImage(
                          image_url: userDocument['image_url'],
                          name: userDocument['name']),
                      SizedBox(height: 30),
                      ProfileOptions(),
                      ProfileInfoElement(
                        avatar: Icons.person_outline_sharp,
                        title: "الاسم",
                        subtitle: userDocument['name'],
                      ),
                      ProfileInfoElement(
                          avatar: Icons.email_outlined,
                          title: "البريد الالكتروني",
                          subtitle: userDocument['email']),
                      ProfileInfoElement(
                          avatar: Icons.local_phone_outlined,
                          title: "رقم الهاتف",
                          subtitle: userDocument['phone']),
                      ProfileInfoElement(
                          avatar: Icons.location_on_outlined,
                          title: "المدينة",
                          subtitle: userDocument['address']),
                    ],
                  ),
                ),
              ));
  }
}
