import 'package:get/get.dart';
// class JobsList {
//  final String? message;
//  final int? status;
//  final  List<dynamic> data;
//   JobsList( this.message,this.status,this.data);
//  List<dynamic> Getdata(){
//    return data;
//  }
//  }
 class GetJobController extends GetxController{

  dynamic  complResponse ;

 dynamic completResponse(response){

  complResponse = response;
  // return complResponse;
  print('$complResponse This is the data in the Model class');
 }

 dynamic get getData => complResponse ;



 }



