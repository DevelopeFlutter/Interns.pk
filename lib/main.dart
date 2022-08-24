import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:interns/Views/HomePage.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post.dart';
import 'Views/New_JobPost_section/Job_Post.dart';
import 'Views/for_test.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      //ForFutureBuilder(),
      //JObPost(),
      homePageView(),
      builder: EasyLoading.init(),

    );
  }
}
