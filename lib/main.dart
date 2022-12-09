import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_cup/screens/group_details_screen.dart';
import 'package:world_cup/screens/home_screen.dart';
import 'package:world_cup/screens/login_screen.dart';
import 'package:world_cup/screens/main_screen.dart';
import 'package:world_cup/screens/profile_screen.dart';
import 'package:world_cup/screens/register_screen.dart';
import 'package:world_cup/screens/results_screen.dart';
import 'package:world_cup/screens/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/important_details_screen.dart';
import 'screens/news_screen.dart';

// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // make app from right to left

      title: 'World Cup',
      theme: ThemeData(
        fontFamily: GoogleFonts.tajawal(
          wordSpacing: 2,
          letterSpacing: 1,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ).fontFamily,
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasData) {
            return const Directionality(
              // add this
              textDirection: TextDirection.rtl, // set this property
              child: HomeScreen(),
            );
          } else {
            return const WelcomePage();
          }
        },
      ),

      routes: {
        WelcomePage.routeName: (context) => const WelcomePage(),
        LoginScreen.routeName: (context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const Directionality(
              // add this
              textDirection: TextDirection.rtl, // set this property
              child: HomeScreen(),
            ),
        GroupDetailsScreen.routeName: (context) => const GroupDetailsScreen(),
        RegisterScreen.routeName: (context) => const RegisterScreen(),
        ResultScreen.routeName: (context) => const ResultScreen(),
        ProfileScreen.routeName: (context) => const ProfileScreen(),
        NewsScreen.routeName: (context) => const NewsScreen(),
        MainScreen.routeName: (context) => const MainScreen(),
        ImportantNewsDetailsScreen.routeName: (context) =>
            const ImportantNewsDetailsScreen(),
      },
    );
  }
}
