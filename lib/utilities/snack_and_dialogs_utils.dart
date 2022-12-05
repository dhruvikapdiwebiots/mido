


import '../config.dart';

snackBar(message, {context, duration, textColor, backgroundColor, icon}) {
  final snackBar = SnackBar(
    content: Row(
      children: [
        if (icon != null) SvgPicture.asset(icon!),
        const HSpace(Sizes.s15),
        Text(
          message,
          style: AppCss.sofiaSansExtraBold65.textColor(textColor),
        ),
      ],
    ),
    behavior: SnackBarBehavior.floating,
    backgroundColor: backgroundColor,
    dismissDirection: DismissDirection.horizontal,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(AppRadius.r15),
    ),
    margin: EdgeInsets.only(
        bottom: MediaQuery.of(Get.context!).size.height - Sizes.s80,
        right: Insets.i15,
        left: MediaQuery.of(Get.context!).size.width * Sizes.s30 / Sizes.s100),
  );

  ScaffoldMessenger.of(context ?? Get.context).clearSnackBars();
  ScaffoldMessenger.of(context ?? Get.context).showSnackBar(snackBar);

  //ex : helper.snackBar('alert message');
}
