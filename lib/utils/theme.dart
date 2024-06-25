import 'package:flutter/material.dart';

final ThemeData appTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.grey,
  textTheme: TextTheme(
    bodyText1: TextTheme().bodyText1.copyWith(color: Colors.white),
    bodyText2: TextTheme().bodyText2.copyWith(color: Colors.white),
  ),
);