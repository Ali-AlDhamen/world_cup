import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  static const String routeName = "/";
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: const Center(
        child: Text('Welcome to the World Cup'),
      ),
    );
  }
}
