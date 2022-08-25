import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:interns/Views/HomePage.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post.dart';
import 'package:interns/Views/remove_post.dart';
import 'Services/Auth_Services/signUp.dart';
import 'Views/New_JobPost_section/Job_Post.dart';
import 'Views/for_test.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp()
  );
  //GeTJob().GetJob();

}
class MyApp extends StatelessWidget {
  const  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      //ForFutureBuilder(),
      //JObPost(),
      homePageView(),
     // const remove_job(),
      builder: EasyLoading.init(),

    );
  }
}
