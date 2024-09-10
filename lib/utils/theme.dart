
import 'package:flutter/material.dart';

import 'app_constants.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: PRIMARY_COLOR,
    fontFamily: 'Epilogue',
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
    ),
  );
}