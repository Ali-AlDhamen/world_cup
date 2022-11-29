import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:world_cup/providers/auth_provider.dart';
import 'package:world_cup/screens/home_screen.dart';
import 'package:world_cup/screens/login_screen.dart';
import 'package:world_cup/screens/welcome_page.dart';




class AuthChecker extends ConsumerStatefulWidget {
  const AuthChecker({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthCheckerState();
}
class _AuthCheckerState extends ConsumerState<AuthChecker> {
  
 @override
  Widget build(BuildContext context) {
    final user = ref.watch(authStateProvider);
    return user.when(
      data: (user) {
        if (user != null) {
          return const  WelcomePage();
        } else {

          return const WelcomePage();
        }
      },
      loading: () => const SplashScreen(),
      error: (error, stack) => const WelcomePage(),
    );
  }
  }




class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
