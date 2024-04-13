import 'package:cat_breeds/app/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerWidget {
  static const name = 'Splash-screen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
// Introduce a delay of 2 seconds before switching to the main screen
    Future.delayed(Duration(seconds: 2), () {
      context.go('/breeds');
    });
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetsToken.images.splashLoading.path,
        ),
      ),
    );
  }
}
