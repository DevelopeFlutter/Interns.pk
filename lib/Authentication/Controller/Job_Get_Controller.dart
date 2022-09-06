import 'package:get/get.dart';
class JobsList extends GetxController{
  // RxStatus loadingStatus = RxStatus.loading();
  // RxBool isObsecureText = true.obs;
  var message =''.obs;
  var status =0.obs;
   List<dynamic> data=[].obs;
  List Getdata() {
    return data;
  }
  setData(var message, var status, List<dynamic> data ){
   this.message = message =''.obs;
  this.status = status =0.obs;
  this.data = data =[].obs;
 }
 }




