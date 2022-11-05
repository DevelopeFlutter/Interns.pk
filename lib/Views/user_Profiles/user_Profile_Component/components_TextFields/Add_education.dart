// ignore_for_file: camel_case_types, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/user_profiel_Reuseable_TextField.dart';

import '../../../../Authentication/Controller/User_Profile_Controller.dart';
import '../../My_profile.dart';
import 'package:get/get.dart';

import '../ElevatedButton.dart';
class AddEducationTextField extends StatefulWidget {
  const AddEducationTextField({Key? key}) : super(key: key);

  @override
  State<AddEducationTextField> createState() => _AddEducationTextFieldState();
}
bool foreducation = false;
var educationVal = profileObj.education;
FocusNode educationnode = FocusNode();
class _AddEducationTextFieldState extends State<AddEducationTextField> {
  TextEditingController educationController = TextEditingController();
  Userprofile profileObj = Get.put(Userprofile());
  void educationNodeFocus() {
    FocusScope.of(context).requestFocus(educationnode);
    foreducation = true;
  }
  @override
  Widget build(BuildContext context) {
    return  Column(
        children:[ userProfileReuseableTextField(
          onTap: (){},
          generalController: educationController,
          generalHintText:  "What kind of education you have?",
          returnDataCallonSubmit: (val) {
            educationnode.unfocus();
            foreducation = false;
          },
          generalFocusNode: foreducation ? educationnode : null,
          enabled: foreducation ? true : false,
          Autofocus: foreducation,
          returnDataCallonChanged: (value) {
            setState(() {
              educationVal = value;
              profileObj.educationVal(value);
            });
          },
          hintMaxlines: 3,
          border: foreducation ? null : InputBorder.none,
        ),
          userProfileButton(text: foreducation?  'Save'
              : educationVal == ''
              ? 'Add education'
              : 'Edit', onPressed: (){
            if (foreducation) {
              educationnode.unfocus();
              foreducation = false;
            } else {
              educationNodeFocus();
            }

          })
        ] );
  }
}
