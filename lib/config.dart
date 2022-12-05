import 'config.dart';
export 'controllers/common_controller/app_controller.dart';
export 'package:get_storage/get_storage.dart';

export 'package:mido/extensions/textstyle_extensions.dart';
export 'package:mido/extensions/spacing.dart';
export 'package:get/get.dart';
export 'package:flutter/material.dart';
export 'package:google_fonts/google_fonts.dart';
export 'package:font_awesome_flutter/font_awesome_flutter.dart';
export 'package:flutter_svg/flutter_svg.dart';
export 'utilities/index.dart';
export 'common/theme/index.dart';
export '../../common/config.dart';
export 'common/theme/index.dart';
export 'package:carousel_slider/carousel_slider.dart';
export 'common/language/index.dart';
export '../../routes/index.dart';
export 'package:cached_network_image/cached_network_image.dart';

final appCtrl = Get.isRegistered<AppController>()
    ? Get.find<AppController>()
    : Get.put(AppController());
