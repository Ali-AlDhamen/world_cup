import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProfileImage extends StatelessWidget {
  String? image_url;
  String? name;
  ProfileImage({super.key, this.image_url, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(image_url as String),
            ),
            Positioned(
              bottom: 1,
              right: 1,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      width: 3,
                      color: kPinkColor,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        50,
                      ),
                    ),
                    color: kPinkColor,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(2, 4),
                        color: Colors.black.withOpacity(
                          0.3,
                        ),
                        blurRadius: 3,
                      ),
                    ]),
                child: const Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Icon(Icons.edit_outlined, color: kWhiteColor),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text(
          name as String,
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
