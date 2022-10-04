// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, prefer_typing_uninitialized_variables, file_names

import 'package:get/get.dart';

class AuthController extends GetxController{
// SignUp Controller!
   RxBool isObscureText = true.obs;
var name = "".obs;
var email = "".obs;
var password = "".obs;
var confirmPassword=''.obs;
}

class Authcontroller extends GetxController{
  //Login Controller!
  // RxBool isObsecureText=true.obs;
  var Email ;
  var Password ;
  var data;
  void setData( data){
      this.data = data;
      update();
  }


}