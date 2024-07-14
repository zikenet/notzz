import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: false,
  textTheme: textTheme(),
  inputDecorationTheme: inputDecorationTheme(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.dark,
  appBarTheme: appBarTheme(),
  // const AppBarTheme(
  //   systemOverlayStyle: SystemUiOverlayStyle(
  //     // Status bar color
  //     statusBarColor: Color(0XFF1C1C1C),
  //     // Status bar brightness (optional)
  //     statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
  //     statusBarBrightness: Brightness.light, // For iOS (dark icons)
  //   ),
  //   backgroundColor: Colors.transparent,
  //   elevation: 0,
  //   iconTheme: IconThemeData(color: Colors.white),
  //   titleTextStyle: TextStyle(color: Colors.white),
  // ),
  colorScheme: ColorScheme.dark(
    surface: const Color(0XFF1C1C1C),
    primary: const Color(0XFF323232),
    primaryContainer: const Color(0XFF323232),
    tertiaryContainer: Colors.transparent,
    secondary: const Color(0XFF3EB8D4),
    shadow: Colors.grey.withOpacity(0.4),
    error: Colors.red,
    errorContainer: Colors.transparent,
  ),
);

ThemeData lightTheme = ThemeData(
  textTheme: textTheme(),
  inputDecorationTheme: inputDecorationTheme(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  useMaterial3: false,
  brightness: Brightness.light,
  appBarTheme: const AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle(
      // Status bar color
      statusBarColor: Color(0xFFFAFAFA),
      // Status bar brightness (optional)
      statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
      statusBarBrightness: Brightness.light, // For iOS (dark icons)
    ),
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(color: Colors.black),
  ),
  colorScheme: ColorScheme.light(
    surface: const Color(0XFFFAFAFA),
    primary: Colors.white,
    primaryContainer: const Color(0XFFDCF8FF),
    // tertiary: Colors.black,
    tertiaryContainer: const Color(0XFF3EB8D4).withOpacity(0.1),
    secondary: const Color(0XFF3EB8D4),
    shadow: Colors.grey,
    error: Colors.red,
    errorContainer: Colors.red.withOpacity(0.1),
  ),
  // textTheme: GoogleFonts.robotoTextTheme(),
);

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: Colors.transparent),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 15),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    backgroundColor: const Color(0XFF323232),
    // color: Colors.white,
    // elevation: 0,
    iconTheme: const IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
    toolbarTextStyle: const TextTheme(
      titleLarge: TextStyle(fontSize: 18),
    ).bodyMedium,
    titleTextStyle: const TextTheme(
      titleLarge: TextStyle(fontSize: 18),
    ).titleLarge,
  );
}
