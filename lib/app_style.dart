import 'package:flutter/material.dart';

class AppStyle {
  final ThemeData themeData = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
        textTheme: const TextTheme(
          //add style for body small
          bodySmall: TextStyle(
            fontSize: 22.0, 
            fontWeight: FontWeight.normal),
          headlineMedium:
              TextStyle(
                fontSize: 48.0, 
                fontWeight: FontWeight.bold),
        ),
  );
}