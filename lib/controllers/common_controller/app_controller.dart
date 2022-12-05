

import '../../config.dart';

class AppController extends GetxController {
  AppTheme _appTheme = AppTheme.fromType(ThemeType.light);
  final storage = GetStorage();
  AppTheme get appTheme => _appTheme;
  int selectedIndex = 0;
  bool isTheme = false;
  int currVal = 1;
  String priceSymbol = "\$";
  dynamic currencyVal;
  double rateValue = 0.0;
  List drawerList = [];

//list of bottommost page
  List<Widget> widgetOptions = <Widget>[

  ];

  //update theme
  updateTheme(theme) {
    _appTheme = theme;
    Get.forceAppUpdate();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    getData();
    //rateValue = double.parse(appArray.currencyList[0]['INR'].toString());
    update();
    super.onReady();
  }

  //get data from storage
  getData()async{
    //theme check
    bool loadThemeFromStorage = storage.read('isDarkMode') ?? false;
    if (loadThemeFromStorage) {
      isTheme = true;
    } else {
      isTheme = false;
    }

    update();
    await storage.write("isDarkMode", isTheme);
    ThemeService().switchTheme(isTheme);
    update();
    Get.forceAppUpdate();
  }


//currency change
  currencyChange(val, code) async {
    currencyVal = storage.read('currencyVal') ?? appArray.currencyList[0];
    priceSymbol = val['symbol'];

    rateValue = currencyVal[code];
    update();
    update();
    Get.forceAppUpdate();
    await storage.write('currencyVal', val);
    Get.back();
  }


}
