// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/user_profiel_Reuseable_TextField.dart';

import '../../../../Authentication/Controller/User_Profile_Controller.dart';
import '../../My_profile.dart';
import 'package:get/get.dart';

import '../ElevatedButton.dart';
class AddSummaryTextField extends StatefulWidget {
  const AddSummaryTextField({Key? key}) : super(key: key);

  @override
  State<AddSummaryTextField> createState() => _AddSummaryTextFieldState();
}
bool forsummary = false;
var summaryVal = profileObj.summary;
FocusNode summarynode = FocusNode();
class _AddSummaryTextFieldState extends State<AddSummaryTextField> {
  TextEditingController newController = TextEditingController();
  Userprofile profileObj = Get.put(Userprofile());
  void summaryFocus() {
    FocusScope.of(context).requestFocus(summarynode);
    forsummary = true;
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
        children:[ userProfileReuseableTextField(
          onTap: (){

          },
          generalController: newController,
          generalHintText:  "Adding a summary is a quick and easy way to highlight your experience and interests.",
          returnDataCallonSubmit: (val) {
            summarynode.unfocus();
            forsummary = false;
          },
          generalFocusNode: forsummary ? summarynode : null,
          enabled: forsummary ? true : false,
          Autofocus: forsummary,
          returnDataCallonChanged: (value) {
            setState(() {
              summaryVal = value;
              profileObj.summaryVal(value);
            });
          },
          hintMaxlines: 3,
          border: forsummary ? null : InputBorder.none,
        ),
          userProfileButton(text: forsummary?  'Save'
              : summaryVal == ''
              ? 'Add Summary'
              : 'Edit', onPressed: (){
            if (forsummary) {
              summarynode.unfocus();
              forsummary = false;
            } else {
              summaryFocus();
            }

          })
        ] );
  }
}
