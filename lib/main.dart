import 'package:flutter/material.dart';
import 'package:world_cup/screens/welcome_page.dart';

void main() {
  runApp(const MyApp());
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
      routes: {
       WelcomePage.routeName: (context) => const WelcomePage(),
      },
    );
  }
}
