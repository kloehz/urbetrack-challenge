import 'package:flutter/material.dart';

class Themes {
  static final darkTheme = ThemeData(
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(
          Colors.indigo[400]
        ),
      )
    ),
    listTileTheme: const ListTileThemeData(
      textColor: Colors.white,
      iconColor: Colors.white,
    ),
    scaffoldBackgroundColor: const Color.fromRGBO(30, 30, 30, 1),
    appBarTheme: AppBarTheme(
      color: Colors.indigo[300]
    ),
    primaryColor: Colors.red,
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.indigo[400],
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white)
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return Colors.grey;
            }
            return Colors.indigo; // Use the component's default.
          },
        ),
      )
    )
  );
}