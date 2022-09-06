import 'package:get/get.dart';

class AuthController extends GetxController{
// SignUp Controller!
  RxBool isObscureText = true.obs;
var name = "".obs;
var email = "".obs;
var password = "".obs;
var confirmPassword = "".obs;
}

class Authcontroller extends GetxController{
  //Login Controller!
  // RxBool isObsecureText = true.obs;
  var Email ;
  var Password ;
  List  userEmail =[];
  var data;
    setData( var data ){
    this.data = data;
    print('${data} This is the User Email');
  }
  SimplePrint(){

      print("${data['_id']}AuthController class");
  }
}