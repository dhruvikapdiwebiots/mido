import '../../config.dart';
part 'scale.dart';

class AppCss {
  //monterrat font
  static TextStyle sofiaSans = const TextStyle(
    fontFamily: "SofiaSans",
    letterSpacing: 0,

    height: 1,
  );

  //poppins font
  static TextStyle poppins = TextStyle(
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1,
  );


  //Text Style montserrat extra bold
  static TextStyle get sofiaSansExtraBold65 => sofiaSans.extraThickBold.size(FontSizes.f65);
  static TextStyle get poppinsExtraBold60 => poppins.extraThickBold.size(FontSizes.f60);

}
