// ignore_for_file: non_constant_identifier_names, camel_case_types, depend_on_referenced_packages, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interns/Views/user_Profiles/My_profile.dart';
import '../../../Authentication/Controller/User_Profile_Controller.dart';
Widget userProfileReuseableTextField({
  required VoidCallback onTap,
  required enabled,
  required Autofocus,
  required Function returnDataCallonSubmit,
  required Function returnDataCallonChanged,
  required generalFocusNode,
  required TextEditingController generalController,
  required generalHintText,
  required hintMaxlines,
  required border,
}) {
 return Padding(
   padding: const EdgeInsets.only(left:20,right:10),
   child: TextField(
       // keyboardType: TextInputType.multiline,
     minLines: 1, // <-- SEE HERE
     maxLines: 5,
      maxLength: 180,
      onTap: onTap,
        autofocus: true,
        onSubmitted: (ter) {
          returnDataCallonSubmit(ter);
        },
        enabled: enabled,
        focusNode: generalFocusNode,
        controller: generalController,
        onChanged: (value) {
          returnDataCallonChanged(value);
        },
        decoration: InputDecoration(
          // isDense: true,
            contentPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            border: border,
            hintText: generalHintText,
            hintMaxLines: hintMaxlines),
        style: const TextStyle(color: Colors.black87, fontSize: 16),
      ),
 );
}

