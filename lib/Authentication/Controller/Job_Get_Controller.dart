// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, prefer_typing_uninitialized_variables, file_names
import 'package:get/get.dart';
class JobsList extends GetxController{
  var message ;
  var status ;
   List<dynamic> data=[];
  List Getdata() {
    return data;
  }
  setData(var message, var status, List<dynamic> data ){
   this.message = message ;
  this.status = status;
  this.data = data ;

  }
 }




