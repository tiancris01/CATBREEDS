import 'package:flutter/material.dart';

class BreedsScreen extends StatelessWidget {
  static const name = 'Cat-breeds-screen';
  const BreedsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Breeds'),
      ),
      body: const Center(
        child: Text('Cat Breeds Screen'),
      ),
    );
  }
}
