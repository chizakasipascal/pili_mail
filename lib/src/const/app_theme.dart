import 'package:flutter/material.dart';
import 'package:pili_mail/src/const/font_family.dart';

final ThemeData themeData = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primaryColor: Colors.deepOrange,
  textTheme: _textTheme,
  fontFamily: FontFamily.roboto,
  splashColor: Colors.deepOrange,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
      .copyWith(secondary: Colors.deepOrange),
  textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
);

TextTheme _textTheme = const TextTheme(
  subtitle2: TextStyle(
    color: Colors.grey,
  ),
);
