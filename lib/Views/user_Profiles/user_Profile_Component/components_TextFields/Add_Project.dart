// ignore_for_file: camel_case_types, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/user_profiel_Reuseable_TextField.dart';

import '../../../../Authentication/Controller/User_Profile_Controller.dart';
import '../Add_Project_Screen.dart';
import '../../My_profile.dart';
import 'package:get/get.dart';
import '../ElevatedButton.dart';

class AddProjectTextField extends StatefulWidget {
  const AddProjectTextField({Key? key}) : super(key: key);
  @override
  State<AddProjectTextField> createState() => _AddProjectTextFieldState();
}

class _AddProjectTextFieldState extends State<AddProjectTextField> {
  TextEditingController skillController = TextEditingController();
  Userprofile profileObj = Get.put(Userprofile());
  @override
  Widget build(BuildContext context) {
    List<dynamic> projectList = profileObj.projectList;
    return Obx(
      () => Column(children: [
        profileObj.projectList.isEmpty?
            Padding(
              padding:  const EdgeInsets.only(left: 20,top: 10),
              child: Align(alignment:Alignment.centerLeft,child: Text("Add your project if any.",style: TextStyle(fontSize: 16,color: Colors.black.withOpacity(0.4)),)),
            ):
        Card(
          elevation: 0,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: projectList.length,
            itemBuilder: (BuildContext context, int index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Text(
                        '${projectList[index]['projectTitle']}',
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w300),
                      ),
                      Text('${projectList[index]['companyName']}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w300)),
                      Text('${projectList[index]['projectTools']}',
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w300))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40, right: 15),
                  child: Column(
                    children: [
                      GestureDetector(
                        child: const Icon(
                          Icons.edit,
                          size: 25,
                          color: appcolors.greenishText,
                        ),
                        onTap: () {
                          Get.to(const ForAddProject (),arguments: projectList[index] );

                        },
                      ),
                      GestureDetector(
                        child: const Icon(
                          Icons.delete,
                          size: 20,
                          color: Colors.grey,
                        ),
                        onTap: () {
                           projectList.removeAt(index);
                        },
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        userProfileButton(
            text: 'Add projects',
            onPressed: () {
              Get.to(const ForAddProject());
            })
      ]),
    );
  }
}
