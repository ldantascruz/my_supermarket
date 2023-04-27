import 'dart:ui';

class AppColors {
  AppColors._();

  static const Color primaryColor = Color.fromARGB(255, 188, 20, 20);
  static const Color secondaryColor = Color.fromARGB(255, 239, 53, 53);
  static const Color tertiaryColor = Color.fromARGB(255, 255, 111, 111);

  static const Color black = Color(0xFF000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color snowWhite = Color(0xFFDDD9CE);
  static const Color darkGrey = Color(0xFFa9a9a9);
  static const Color greyLight = Color(0xFFD3CDCD);

  static const List<Color> primaryGradient = [
    primaryColor,
    secondaryColor,
    tertiaryColor,
  ];
}
