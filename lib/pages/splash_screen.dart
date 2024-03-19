import 'package:ecommerce/pages/login/login_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const LoginPage()),
          (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/icons/mbukak.png',
          height: 186,
        ),
      ),
    );
  }
}
