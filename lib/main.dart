// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:interns/Authentication/Controller/Auth_Controller.dart';
import 'package:interns/Views/HomePage.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post.dart';
import 'package:interns/Views/remove_post.dart';
import 'Services/Auth_Services/signUp.dart';
import 'Views/New_JobPost_section/Job_Post.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController general =TextEditingController();
    return const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:
        // AddSummaryTextField()
         homePageView()
    );
  }
}
