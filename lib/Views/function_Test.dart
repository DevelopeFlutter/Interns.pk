import 'dart:async';
import 'dart:convert';
import 'dart:math';
import 'package:interns/Network/API_manger.dart';
import '../Network/APIs_call.dart';
import 'for_Test_Model.dart';
class TestFunction {
   Future  getdata() async {
     var data;
     try {
       // final JobsList getTheJob = Get.put(JobsList());
       var response = await API().get(api_manager.GETJOB).timeout(
           const Duration(seconds: 10,), onTimeout: () {
         throw TimeoutException("Connection Time Out Please Try Again");
       });
       if (response.statusCode == 200) {
          data = jsonDecode(response.body);
         // print('$data This is Response of getData text......');
         // getTheJob.setData(data['message'], data['status'], data['data']);
         return data;
       }
       else {
         null;
       }

   }
   on TimeoutException  catch (_) {
     print("Response Time out");
   }
   return data;
   }


}