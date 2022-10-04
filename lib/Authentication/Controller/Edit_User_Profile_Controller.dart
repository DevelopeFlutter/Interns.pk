// ignore_for_file: prefer_typing_uninitialized_variables, depend_on_referenced_packages, file_names
import 'package:get/get.dart';
class EditProfileController extends GetxController {
  RxBool isObscureText = true.obs;
         RxString name= ''.obs;
  var firstname;
  var lastname;
  var dateofBirth;
  var gender;

  var mobilenumber;
  var address;
  var country;
  var city;
  void firstnameValue(set) {
    firstname = set;
    print("${firstname} This is the firstName value");
  }

  void lastnameVal(var set) {
    lastname = set;
  }

  void birthDateValue(set) {
    dateofBirth = set;
  }

  dynamic genderVal(var set) {
    gender = set;
  }


  void mobileVal(var set) {
    mobilenumber = set;
  }

  void addressVal(var set) {
    address = set;
  }

  void countryVal(var set) {
    country = set;
  }

  void cityVal(var set) {
    city = set;
  }
}
