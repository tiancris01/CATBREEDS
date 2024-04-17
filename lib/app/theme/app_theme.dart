import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    this.primaryColor = const Color(0xFFFF0077),
    this.secondaryColor = const Color(0xFF8C00FF),
  });

  final Color primaryColor, secondaryColor;

  ColorScheme _colorScheme(Brightness brightness) {
    return ColorScheme.fromSeed(
      seedColor: primaryColor,
      primary: primaryColor,
      secondary: secondaryColor,
      brightness: brightness,
    );
  }

  ThemeData toThemeData({required Brightness brightness}) {
    return _base(_colorScheme(brightness));
  }

  ThemeData _base(ColorScheme colorScheme) {
    final primaryTextTheme = GoogleFonts.acmeTextTheme();
    final secondaryTextTheme = GoogleFonts.anonymousProTextTheme();
    final textTheme = primaryTextTheme.copyWith(
      titleLarge: primaryTextTheme.titleLarge,
      titleMedium: secondaryTextTheme.titleMedium,
      titleSmall: secondaryTextTheme.titleSmall,
      bodyMedium: secondaryTextTheme.bodyMedium,
      bodySmall: secondaryTextTheme.bodySmall,
    );
    final isLight = colorScheme.brightness == Brightness.light;
    return ThemeData(
      extensions: [this],
      // textTheme: textTheme,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: colorScheme.background,
    );
  }

  @override
  ThemeExtension<AppTheme> copyWith(
      {Color? primaryColor,
      Color? secondaryColor,
      Color? terciaryColor,
      Color? neutralColor}) {
    return AppTheme(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
    );
  }

  @override
  ThemeExtension<AppTheme> lerp(
      covariant ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) return this;
    return AppTheme(
      primaryColor: Color.lerp(primaryColor, other.primaryColor, t)!,
      secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t)!,
    );
  }
}
