import 'package:get/get.dart';
class JobsList extends GetxController{
  String? message;
  int? status;
   List<dynamic> data=[];
  List Getdata() {
    return data;
  }
 dynamic setData(String message, int status, List<dynamic> data){
   this.message = message;
  this.status = status;
  this.data = data;
 }
 }




