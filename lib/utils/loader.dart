import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:interns/Theme/app_Colors.dart';

class PopupLoader{
  static  show([indicator = EasyLoadingIndicatorType.fadingFour]){
    EasyLoading.instance
        ..indicatorType = indicator
      ..displayDuration = const Duration(microseconds: 5000)
        ..maskType = EasyLoadingMaskType.clear;

    EasyLoading.show();
  }
  static  hide() {
    EasyLoading.dismiss();
  }
}