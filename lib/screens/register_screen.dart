import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../widgets/auth_form.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "/register";
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBurgundyColor,
      body: Center(
          child: Card(
        margin: const EdgeInsets.all(20),
        child: AuthForm(),
      )),
    );
  }
}
