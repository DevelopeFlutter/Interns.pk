// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:interns/Authentication/Controller/Auth_Controller.dart';
import 'package:get/get.dart';
AuthController controller = Get.put(AuthController());
Widget textformfeild({
  required isObscureText,
  required boolTitleShowHide,
  required fieldHint,
  padding,
  required Function returnDatacall,
// Function
}) {
  return Container(
    height: boolTitleShowHide ? 90 : 80,
    // color: Colors.amber,
    padding: padding ?? const EdgeInsets.only(left: 10, right: 10, top: 0, bottom: 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "$fieldHint  Required";
            }
            if(fieldHint=="email"||fieldHint=="Email"){
              if(!value.contains("@")||!value.contains(".com")){
                return ("Email must be valid");
              }
            }
            if(fieldHint =="ConfirmPassword" || fieldHint =="ConfirmPassword"){
            if(controller.password.value != controller.confirmPassword.value){
              return ("Password must be matched");
            }}
            return null;
          },
          obscureText:
              isObscureText ==true?controller.isObscureText.value : false,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(0),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
            ),
            hintText: "$fieldHint",
            border: const UnderlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.red),
            ),
            helperStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            labelStyle: const TextStyle(color: Colors.black54, fontSize: 18),
          ),
          onChanged: (val) {
            returnDatacall(val);
          },
        ),
      ],
    ),
  );
}
