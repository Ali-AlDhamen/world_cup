import 'dart:io';

import 'package:flutter/material.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/screens/login_screen.dart';
import 'package:world_cup/widgets/user_image.dart';

import '../Auth_Repository/auth.dart';
import '../screens/home_screen.dart';

class AuthForm extends StatefulWidget {
  const AuthForm({super.key});

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  File? _userImageFile;

  void _pickedImage(File imagePicked) {
    setState(() {
      _userImageFile = imagePicked;
    });
  }

  void _submit(BuildContext context) async {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();

    if (_userImageFile == null && isValid) {
      Auth.showsnackbar(context, "please pick an image ");
      return;
    }

    if (isValid) {
      await Auth.signUp(
          emailController.text.trim(),
          passwordController.text.trim(),
          usernameController.text.trim(),
          addressController.text.trim(),
          phoneController.text.trim(),
          _userImageFile as File,
          context);
      // ignore: use_build_context_synchronously
      Navigator.pushNamed(context, HomeScreen.routeName);
    }
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    usernameController.dispose();
    phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UserImagePicker(_pickedImage),
              const SizedBox(height: 10),
              TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty || value.length < 4) {
                    return 'Please enter at least 4 characters.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: addressController,
                decoration: const InputDecoration(
                  labelText: 'address',
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'address is required.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: phoneController,
                decoration: const InputDecoration(
                  labelText: 'phone number',
                ),
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty || value.length < 10) {
                    return 'Please enter at least 10 characters.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email Address',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email address.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                validator: (value) {
                  if (value!.isEmpty || value.length < 7) {
                    return 'Password must be at least 7 characters long.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () => _submit(context),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: kBurgundyColor,
                  ),
                  child: const Text('Signup')),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed(
                    LoginScreen.routeName,
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: kBurgundyColor,
                ),
                child: const Text('I already have an account'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
