import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class AppTextStyle {
  static TextStyle nameOfTextStyle = const TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static TextStyle SmallText = TextStyle(
    fontSize: 16,
    color: Colors.black.withOpacity(0.9),
  );
  static TextStyle LessOpacitytext = TextStyle(
    fontSize: 17,color: Colors.black.withOpacity(0.7),
  );
      static const Color greyColor = Color(0xFFEEEEEE);
      static TextStyle WithOpacityBlackColor =  TextStyle(
        color: Colors.black.withOpacity(0.7)
      );
      static TextStyle TextSize = const TextStyle(
        fontSize: 16,
      );
      static TextStyle TextSizeColor = const TextStyle(
        color: Colors.black,
          fontSize: 16,
        fontWeight: FontWeight.bold,
      );
      static TextStyle  ForLargeText = const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold
      );
      static TextStyle SmallfromLargeText5 = const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.white

      );
      static TextStyle fontSize_text = TextStyle(
        fontSize: 18
      );
  static TextStyle text_bold = TextStyle(
      fontWeight:FontWeight.bold,
  );


}


