import 'package:flutter/material.dart';

class BreedsDetails extends StatelessWidget {
  static const name = 'Details-screen';

  const BreedsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Breeds'),
      ),
      body: const Center(
        child: Text('Details Screen'),
      ),
    );
  }
}
