import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:interns/Authentication/Controller/Auth_Controller.dart';
import 'package:interns/Views/HomePage.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post.dart';
import 'package:interns/Views/remove_post.dart';
import 'Authentication/View/Widget_Class_forTest.dart';
import 'Services/Auth_Services/signUp.dart';
import 'Views/New_JobPost_section/Job_Post.dart';
import 'Views/for_test.dart';
import 'package:get/get.dart';

import 'Views/function_Test.dart';
void main() {
  // final Authcontroller getTheJob = Get.put(Authcontroller());
  // TestFunction.getdata();
  // TestFunction().getdata();
  runApp(const MyApp()
  );
}
class MyApp extends StatelessWidget {
  const  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:
     //  const ForTestWidget(),
      homePageView(),
      builder: EasyLoading.init(),

    );
  }
}
