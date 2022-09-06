import 'package:get/get.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Views/for_Test_Model.dart';

import 'function_Test.dart';
class ModelController extends GetxController{
var isLoading = false.obs;
// var ModelList  = <Welcome>[].obs;
   Welcome? welcome;
TestFunction object= TestFunction();
@override
void onInit(){
  fetchData();
  super.onInit();
}
void fetchData() async{
  try {
    isLoading(true);
    dynamic data = await object.getdata();
    if (data != null) {
      welcome =Welcome.fromJson(data);

    }
    else {
      print("null");
    }
  }
  finally {
    isLoading(false);
  }
}

}