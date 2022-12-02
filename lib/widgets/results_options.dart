import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constants/colors.dart';
import '../providers/buttons_provider.dart';


class ResultsOptionsBar extends ConsumerStatefulWidget {
  const ResultsOptionsBar({super.key});

  @override
  ConsumerState<ResultsOptionsBar> createState() => _ResultsOptionsBarConsumerState();
}

class _ResultsOptionsBarConsumerState extends ConsumerState<ResultsOptionsBar> {
  bool btn1 = false;
  bool btn2 = true;
  bool btn3 = false;
  @override
  Widget build(BuildContext context) {
    
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      btn1 = false;
                      btn2 = false;
                      btn3 = true;
                    });
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:  btn3 ? kPinkColor : kBurgundyColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child:  Text(
                    "المباريات",
                    style: TextStyle(
                      color:  btn3 ? kWhiteColor : kDarkGrayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      btn1 = false;
                      btn2 = true;
                      btn3 = false;
                    });
                    ref.read(buttonProvider.notifier).update((state) => "GroupsTables");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: btn2 ? kPinkColor : kBurgundyColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child:  Text(
                    "جدول الترتيب",
                    style: TextStyle(
                      color:  btn2 ? kWhiteColor : kDarkGrayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      btn1 = true;
                      btn2 = false;
                      btn3 = false;
                    });
                    ref.read(buttonProvider.notifier).update((state) => "stat");
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: btn1 ? kPinkColor : kBurgundyColor,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child:  Text(
                    "الإحصائيات",
                    style: TextStyle(
                      color: btn1 ? kWhiteColor : kDarkGrayColor,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            );
  }
}