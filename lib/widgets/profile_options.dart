import 'package:flutter/material.dart';

import '../constants/colors.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [

                  Container(
                    height: 45,
                    width: 85,
                    margin: const EdgeInsets.all(30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      
                        
                        
                        child: TextButton(
                          
                          child: Text("حسابي"),
                          onPressed: (){},
                          style: TextButton.styleFrom(
                            foregroundColor: kWhiteColor, backgroundColor: kPinkColor,
                            textStyle: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ),
                      ),
                  ),
                  
                    
                  TextButton(
                    child: Text("إعدادات"),
                    onPressed: (){},
                    style: TextButton.styleFrom(
                      primary: kWhiteColor,
                      
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    )
                ],
               );
  }
}