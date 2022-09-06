import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:interns/Theme/app_Colors.dart';

class PopupLoader{
  static void show([indicator = EasyLoadingIndicatorType.fadingFour]){
    EasyLoading.instance
        ..indicatorType = indicator
      ..displayDuration = Duration(microseconds: 5000)
        ..maskType = EasyLoadingMaskType.clear;

    EasyLoading.show();
  }
  static void hide() {
    EasyLoading.dismiss();
  }
}