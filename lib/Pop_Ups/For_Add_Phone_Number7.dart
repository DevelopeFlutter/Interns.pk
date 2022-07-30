import 'package:flutter/material.dart';
import 'package:interns/Pop_Ups/Button_Class.dart';

import 'FirstName_LastName_PhoneNumber_Pop_Ups_class.dart';
import 'TextField_For_Pop_Ups.dart';

class ForAddPhoneNumberPopUp {
  static Dialogue(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              insetPadding: const EdgeInsets.all(10),
              backgroundColor: Colors.white,
              child: new FistNameLastNamePhoneNumber(TextForPopUps: 'Your phone number',)
          );
        });
  }
}
