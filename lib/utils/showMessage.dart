import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
class ShowMessage{
  showMessage(
      BuildContext context,
      String message,
      ){
    return showToast(
    '$message',
    context:context,
  duration: Duration(seconds:3),
  animation: StyledToastAnimation.slideToBottomFade,
  backgroundColor: Colors.green,
  dismissOtherToast: true,
  textStyle: TextStyle(color:appcolors.white),
  position: StyledToastPosition.bottom,
    );
  }
  showErrorMessage(BuildContext context, String message) {
    return showToast(
      '$message',
      // duration: Duration(seconds: 2),
      context: context,
      // animation: StyledToastAnimation.slideFromTopFade,
      animation: StyledToastAnimation.slideToBottomFade,
      backgroundColor: Colors.red,
      dismissOtherToast: true,
      textStyle: TextStyle(color: appcolors.white),
      position: StyledToastPosition.bottom,
    );
  }
}