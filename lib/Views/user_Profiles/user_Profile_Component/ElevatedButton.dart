// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
Widget userProfileButton({
  required VoidCallback onPressed,
  required  text
})
{return Padding(
  padding: const EdgeInsets.only(left: 12,right: 12),
  child:   SizedBox(height: 50,
    width: double.infinity,
    child:   ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white.withOpacity(0.9),
              side:  const BorderSide(
                  color: appcolors.greenishText, width: 1.7),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
            onPressed:onPressed,
            child: Text(text,style: const TextStyle(
                fontSize: 18, color: appcolors.greenishText))
        ),
  ),
);
  }
//           "Adding a summary is a quick and easy way to highlight your experience and interests.",
