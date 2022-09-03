import 'package:flutter/material.dart';

class AppColor {
  static Color primaryColor = const Color(0xFF1C3E66);
  static Color secondaryColor = const Color.fromARGB(255, 3, 8, 104);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color blackGrey = const Color.fromARGB(255, 39, 39, 39);
  static Color backgroundBlack = const Color.fromARGB(255, 37, 37, 37);
  static Color backgroundWhite = const Color.fromARGB(255, 255, 255, 255);
  static Color backgroundGray = const Color.fromARGB(255, 240, 240, 240);

  static MaterialColor primarySwatch = const MaterialColor(
    0xFF1C3E66,
    {
      50: Color(0xFF8e9fb3),
      100: Color(0xFF778ba3),
      200: Color(0xFF607894),
      300: Color(0xFF496585),
      400: Color(0xFF335175),
      500: Color(0xFF1C3E66),
      600: Color(0xFF19385c),
      700: Color(0xFF163252),
      800: Color(0xFF142b47),
      900: Color(0xFF11253d),
    },
  );
}
