import 'package:flutter/material.dart';

enum ThemeType {
  light,
  dark,
}

class AppTheme {
  static ThemeType defaultTheme = ThemeType.light;

  //Theme Colors
  bool isDark;
  Color buttonText;
  Color primary;
  Color secondary;
  Color gradient;
  Color screenBg;
  Color imageBg;
  Color lightText;
  Color bg1;
  Color bgColor;
  Color surface;
  Color error;
  Color dividerColor;

  //Extra Colors
  Color bgGray;
  Color gray;
  Color darkGray;
  Color lightGray;
  Color borderGray;
  Color orangeColor;
  Color green;
  Color white;
  Color whiteColor;
  Color darkText;
  Color blackColor;
  Color textColor;
  Color contentColor;
  Color borderColor;
  Color greenColor;
  Color ratingColor;
  Color greyLight25;
  Color lightModeColor;
  Color languageColor;
  Color rtlColor;
  Color redColor;
  Color darkGreyColor;

  /// Default constructor
  AppTheme({
    required this.isDark,
    required this.buttonText,
    required this.primary,
    required this.secondary,
    required this.gradient,
    required this.screenBg,
    required this.imageBg,
    required this.lightText,
    required this.bg1,
    required this.bgColor,
    required this.surface,
    required this.error,
    required this.dividerColor,
    //Extra
    required this.bgGray,
    required this.gray,
    required this.darkGray,
    required this.lightGray,
    required this.borderGray,
    required this.orangeColor,
    required this.green,
    required this.white,
    required this.whiteColor,
    required this.darkText,
    required this.blackColor,
    required this.textColor,
    required this.contentColor,
    required this.borderColor,
    required this.greenColor,
    required this.ratingColor,
    required this.greyLight25,
    required this.lightModeColor,
    required this.languageColor,
    required this.rtlColor,
    required this.redColor,
    required this.darkGreyColor,
  });

  /// fromType factory constructor
  factory AppTheme.fromType(ThemeType t) {
    switch (t) {
      case ThemeType.light:
        return AppTheme(
          isDark: false,
          buttonText: const Color(0xFFFFFFFF),

          primary: const Color(0xFF4D66FF),
          secondary: const Color(0xFF5385FC),
          gradient: const Color(0xFF355FE9),
          screenBg: const Color(0xFFFDFDFD),
          imageBg: const Color(0xFFF3F5FB),
          lightText: const Color(0xFF9BA6B8),
          bg1: Colors.white,
          bgColor: Colors.white,
          surface: Colors.white,
          error: const Color(0xFFd32f2f),
          dividerColor: const Color(0xFFF9F9F9),
          //Extra
          bgGray: const Color(0xFFF0F8FD),
          gray: const Color(0xFF999999),
          darkGray: const Color(0xFF666666),
          lightGray: const Color(0xFFEDEFF4),
          borderGray: const Color(0xFFE6E8EA),
          orangeColor: const Color(0xFFFB9927),
          green: const Color(0xFF5CB85C),
          white: Colors.white,
          whiteColor: Colors.white,
          darkText: const Color(0xFF051E47),
          blackColor: Colors.black,
          contentColor: const Color(0xFF777777),
          borderColor: const Color(0xFFECECEC),
          greenColor: const Color(0xFF128760),
          ratingColor: const Color(0xFFFFBB12),
          textColor: Colors.white,
          greyLight25: const Color(0xFFEDEFF4),
          lightModeColor: const Color(0XFFFFF4EC),
          languageColor: const Color(0XFFFCF7F1),
          rtlColor: const Color(0XFFF3F6FB),
          redColor: const Color(0xFFEE595C),
          darkGreyColor: const Color(0xFFACACAC),
        );

      case ThemeType.dark:
        return AppTheme(
          isDark: true,
          buttonText: const Color(0xFFFFFFFF),
          primary: const Color(0xFF4D66FF),
          secondary: const Color(0xFF5385FC),
          screenBg: const Color(0xFF1A1C22),
          imageBg: const Color(0xFFF3F5FB),
          gradient: const Color(0xFF355FE9),
          lightText: const Color(0xFF76777A),
          bg1: const Color(0xFF151A1E),
          bgColor: const Color(0xFF262626),
          surface: const Color(0xFF151A1E),
          error: const Color(0xFFd32f2f),
          dividerColor: const Color(0xFFF9F9F9),
          //Extra
          bgGray: const Color(0xFF262F36),
          gray: const Color(0xFF999999),
          darkGray: const Color(0xFF999999),
          lightGray: const Color(0xFF202020),
          borderGray: const Color(0xFF353C41),
          orangeColor: const Color(0xFFFB9927),
          green: const Color(0xFF5CB85C),
          white: Colors.white,
          whiteColor: Colors.black,
          darkText: const Color(0xFFF4F4F4),
          blackColor: Colors.white,
          contentColor: const Color(0xFF777777),
          borderColor: const Color(0xFFECECEC),
          greenColor: const Color(0xFF128760),
          ratingColor: const Color(0xFFFFBB12),
          textColor: const Color(0xFF636363),
          greyLight25: Colors.black,
          lightModeColor: Colors.black,
          languageColor: Colors.black,
          rtlColor: Colors.black,
          redColor: const Color(0xFFEE595C),
          darkGreyColor: const Color(0xFFACACAC),
        );
    }
  }

  ThemeData get themeData {
    var t = ThemeData.from(
      textTheme: (isDark ? ThemeData.dark() : ThemeData.light()).textTheme,
      colorScheme: ColorScheme(
        brightness: isDark ? Brightness.dark : Brightness.light,
        primary: primary,
        secondary: secondary,
        background: bg1,
        surface: surface,
        onBackground: buttonText,
        onSurface: buttonText,
        onError: buttonText,
        onPrimary: lightText,
        onSecondary: lightText,
        error: error,
      ),
    );
    return t.copyWith(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: borderGray,
        selectionHandleColor: Colors.transparent,
        cursorColor: primary,
      ),
      buttonTheme: ButtonThemeData(buttonColor: primary),
      highlightColor: Colors.transparent,
      toggleableActiveColor: primary,
    );
  }

//Color shift(Color c, double d) => shiftHsl(c, d * (isDark ? -1 : 1));
}
