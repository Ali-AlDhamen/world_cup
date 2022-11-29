import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:world_cup/screens/home_screen.dart';
import 'package:world_cup/screens/login_screen.dart';
import 'package:world_cup/screens/welcome_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'logins/auth_checker.dart';
import 'firebase_options.dart';

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
      locale: const Locale('ar'),
      
      
      title: 'World Cup',
      theme: ThemeData(
        fontFamily: GoogleFonts.tajawal(
          wordSpacing: 2,
          letterSpacing: 1,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ).fontFamily,
        )
      ,
      home: Directionality( // add this
        textDirection: TextDirection.rtl, // set this property 
        child: AuthChecker(),
      ),
      routes: {
        WelcomePage.routeName: (context) => const WelcomePage(),
        LoginScreen.routeName:(context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen()
      },
    );
  }
}
