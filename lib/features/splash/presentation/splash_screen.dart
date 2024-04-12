import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const name = 'Splash-screen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Breeds'),
      ),
      body: const Center(
        child: Text('Splash Screen'),
      ),
    );
  }
}
