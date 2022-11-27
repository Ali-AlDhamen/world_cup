import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:world_cup/screens/news_screen.dart';
import 'package:world_cup/screens/profile_screen.dart';
import 'package:world_cup/screens/results_screen.dart';
import '../constants/colors.dart';
import '../logins/login_controller.dart';
import 'main_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const String routeName = "/home";
  const HomeScreen({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}
class _HomeScreenState extends ConsumerState<HomeScreen> {
  List<Widget> pages = [ProfileScreen() , ResultScreen() , NewsScreen(), MainScreen()];
  int pageIndex =0;
 void selectPage(int index){
  setState(() {
    pageIndex = index;
  });
 
 }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBurgundyColor,
      body: pages[pageIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: kWhite20Color,
        unselectedItemColor: kWhiteColor,
        selectedItemColor: kBurgundyColor,
        currentIndex: pageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard_outlined),
            label: 'Results',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
        ],
      ),

    );
  }
}