import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
      children: [
               
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/luffy.png'),
                  ),
                
                Positioned(
                  bottom: 1,
                  right: 1,
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Icon(Icons.edit_outlined, color: kWhiteColor),
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 3,
                          color: kPinkColor,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            50,
                          ),
                        ),
                        color: kPinkColor,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(2, 4),
                            color: Colors.black.withOpacity(
                              0.3,
                            ),
                            blurRadius: 3,
                          ),
                        ]),
                  ),
                ),
      ],
    ),
    SizedBox(height: 20),
    Text(
      'Luffy',
      style: TextStyle(
        color: kWhiteColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
      ],

    );
  }
}