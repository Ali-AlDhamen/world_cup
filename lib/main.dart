import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
      title: 'World Cup',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AuthChecker(),
      routes: {
        WelcomePage.routeName: (context) => const WelcomePage(),
        LoginScreen.routeName:(context) => const LoginScreen(),
        HomeScreen.routeName: (context) => const HomeScreen()
      },
    );
  }
}
