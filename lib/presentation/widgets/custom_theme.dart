import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constraints.dart';

class MyTheme {
  static final borderRadius = BorderRadius.circular(10.0);
  static final theme = ThemeData(
      //brightness: Brightness.light,
      primaryColor: whiteColor,
      scaffoldBackgroundColor: whiteColor,
      // bottomSheetTheme: const BottomSheetThemeData(backgroundColor: whiteColor),
      // colorScheme: const ColorScheme.light(secondary: lightningYellowColor),
      appBarTheme: AppBarTheme(
        backgroundColor: whiteColor,
        centerTitle: true,
        titleTextStyle: GoogleFonts.plusJakartaSans(
            color: blackColor, fontSize: 20, fontWeight: FontWeight.bold),
        iconTheme: const IconThemeData(color: blackColor),
        elevation: 0,
      ),
      textTheme: GoogleFonts.plusJakartaSansTextTheme(
        TextTheme(
          bodySmall: GoogleFonts.plusJakartaSans(fontSize: 12, height: 1.83),
          bodyLarge: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.w500, height: 1.375),
          bodyMedium: GoogleFonts.plusJakartaSans(fontSize: 14, height: 1.5714),
          labelLarge: GoogleFonts.plusJakartaSans(
              fontSize: 16, height: 2, fontWeight: FontWeight.w600),
          titleLarge: GoogleFonts.plusJakartaSans(
              fontSize: 16, height: 2, fontWeight: FontWeight.w600),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 64),
          backgroundColor: whiteColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
        ),
      ),
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
            shadowColor: MaterialStatePropertyAll(transparent),
            elevation: MaterialStatePropertyAll(0.0),
            iconSize: MaterialStatePropertyAll(20.0),
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStatePropertyAll(
              (transparent),
            ),
            padding: MaterialStatePropertyAll(EdgeInsets.zero)),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        elevation: 0,
        backgroundColor: whiteColor,
        showUnselectedLabels: true,
        selectedItemColor: primaryColor,
        unselectedItemColor: grayColor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        hintStyle: GoogleFonts.plusJakartaSans(
          fontWeight: FontWeight.w400,
          fontSize: 16.0,
          color: grayColor,
        ),
        labelStyle: GoogleFonts.plusJakartaSans(
          fontWeight: FontWeight.w400,
          fontSize: 16.0,
          color: hintTextColor,
        ),
        //contentPadding: Utils.symmetric(h: 30.0, v: 20.0),
        border: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: grayColor.withOpacity(0.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color:primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius,
          borderSide: BorderSide(color: grayColor.withOpacity(0.2)),
        ),
        fillColor: whiteColor,
        filled: true,
        focusColor: primaryColor,
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: blackColor,
        selectionColor: blackColor,
        selectionHandleColor: blackColor,
      ),
      progressIndicatorTheme:
          const ProgressIndicatorThemeData(color: primaryColor));
}
