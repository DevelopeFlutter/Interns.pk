// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Change_Password.dart';
import 'package:interns/Views/Reset_Password.dart';
import 'package:get/get.dart';
class AccountSettings extends StatefulWidget {
  const AccountSettings({Key? key}) : super(key: key);

  @override
  State<AccountSettings> createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: appcolors.greenishText,
        leading: GestureDetector(child: const Icon(Icons.west_outlined),
        onTap: (){
          Navigator.of(context).pop();
        },),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 35),
              child: Text("Account Settings"),
            ),
          ],
        ),
      ),
   body:
   Column(children: [
     Padding(
       padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
         GestureDetector(
             onTap: (){
            Get.to(const ChangePassword());
             },
             child:  const Text("Change Password",style: TextStyle(color: Colors.black,
             fontSize: 16),)),
         const Icon(Icons.arrow_forward_ios,color: appcolors.greenishText,),
       ],),
     ),
     const SizedBox(height: 18,),
     Container(
       width: double.infinity,
       height: 2,
       color: Colors.grey.withOpacity(0.5),
     ), ],)

    );
  }
}
