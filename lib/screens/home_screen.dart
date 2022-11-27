import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../constants/colors.dart';
import '../logins/login_controller.dart';

class HomeScreen extends ConsumerWidget {
  static const String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBurgundyColor,
        title: const Text("Home"),
      ),
      body:  Center(
        child: ElevatedButton(
          onPressed: () {
            ref.read(loginControllerProvider.notifier).signOut();
          },
           
     
          child: Text("sign_out"),
        ),
        )
      );
    
     
    
  }
}
