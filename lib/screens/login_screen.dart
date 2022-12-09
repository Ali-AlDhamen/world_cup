import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:world_cup/constants/colors.dart';
import 'package:world_cup/screens/register_screen.dart';

import '../Auth_Repository/auth.dart';
import 'home_screen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static const String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: ListView(
            
            children: <Widget>[

              SizedBox(height: 200,),
              
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
              ),
              
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email Address',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: TextField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              
              Container(
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kBurgundyColor,
                      onPrimary: kWhiteColor,
                     
                      
                    ),
                    child: const Text('Login'),
                    onPressed: () {
                      Auth.loginIn(emailController.text.trim(), passwordController.text.trim());
                      Navigator.pushNamed(context, HomeScreen.routeName);
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Does not have account?'),
                  TextButton(
                    child: const Text(
                      'SignUp',
                      style: TextStyle(
                        fontSize: 20,
                        color: kBurgundyColor,
                        ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, RegisterScreen.routeName);
                      //signup screen
                    },
                  )
                ],
              ),
            ],
          )),
    );
  }
}
