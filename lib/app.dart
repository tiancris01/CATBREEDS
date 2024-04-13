import 'package:cat_breeds/app/theme/app_theme.dart';
import 'package:cat_breeds/routes/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Cat Breeds',
      theme: AppTheme().getTheme(),
      routerConfig: router,
    );
  }
}
