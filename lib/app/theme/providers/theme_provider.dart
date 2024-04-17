import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class AppBrightness extends _$AppBrightness {
  @override
  Brightness build() {
    return Brightness.light;
  }

  void toggle() {
    state = state == Brightness.light ? Brightness.dark : Brightness.light;
  }
}
