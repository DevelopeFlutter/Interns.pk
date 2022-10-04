// ignore_for_file: depend_on_referenced_packages, prefer_typing_uninitialized_variables, non_constant_identifier_names

import 'package:get/get.dart';
class UserFeedback extends GetxController{
  String? Name;
  String? Email;
  String? Message;
  void Namevalue(set){
    Name = set;
    print("$Name userProfile Name");
  }
  void Emailvalue(set){
    Email = set;
  }
  void Messagevalue(set){
    Message = set;

  }

}