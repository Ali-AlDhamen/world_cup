import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:world_cup/screens/news_screen.dart';
import 'package:world_cup/screens/profile_screen.dart';
import 'package:world_cup/screens/results_screen.dart';
import '../constants/colors.dart';

import 'main_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const String routeName = "/home";
  const HomeScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  List<Widget> pages = [
    const MainScreen(),
    const NewsScreen(),
    const ResultScreen(),
     ProfileScreen()
  ];
  int pageIndex = 0;
  void selectPage(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBurgundyColor,
      body: pages[pageIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        child: BottomNavigationBar(
          onTap: selectPage,
          type: BottomNavigationBarType.fixed,
          backgroundColor: kWhite20Color,
          unselectedItemColor: kWhiteColor,
          selectedItemColor: kPinkColor,
          currentIndex: pageIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'الرئيسية',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined),
              label: 'الأخبار',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard_outlined),
              label: 'النتائج',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'الحساب',
            ),
          ],
        ),
      ),
    );
  }
}
