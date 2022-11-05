// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/ElevatedButton.dart';

import '../../../Authentication/Controller/User_Profile_Controller.dart';
import 'package:get/get.dart';
import 'components_TextFields/Add_summary.dart';

class ForAddProject extends StatefulWidget {
  const ForAddProject({Key? key}) : super(key: key);
  @override
  State<ForAddProject> createState() => _ForAddProjectState();
}

class _ForAddProjectState extends State<ForAddProject> {
  final FocusNode _focusNode = FocusNode();
  TextEditingController projectController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController projectUrlController = TextEditingController();
  TextEditingController customerNameController = TextEditingController();
  TextEditingController customerUrlController = TextEditingController();
  TextEditingController projectToolsController = TextEditingController();
  TextEditingController projectDescriptionController = TextEditingController();
  Userprofile getProjectdata = Get.put(Userprofile());
  @override
  Widget build(BuildContext context) {

    dynamic data = Get.arguments;
    print('$data this is the data get from the screen');
    dynamic projectTitle ;
        // projectController.text;
    dynamic companyName = companyNameController.text;
    dynamic projectUrl = projectUrlController.text;
    dynamic customerName = customerNameController.text;
    dynamic customerURL = customerUrlController.text;
    dynamic projectTools = projectToolsController.text;
    dynamic projectDescription = projectDescriptionController.text;
    RxList projectComponents = [
      projectTitle,
      companyName,
      projectUrl,
      customerName,
      customerURL,
      projectTools,
      projectDescription
    ].obs;
    dynamic projectObj = {
      'projectTitle': projectTitle,
      'companyName': companyName,
      'projectUrl': projectUrl,
      'customerName': customerName,
      'customerURL': customerURL,
      'projectTools': projectTools,
      'projectDescription': projectDescription
    };
    // print(profile.projectTitle.value);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.west,
            color: appcolors.greenishText,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: const [
              Text(
                "Add your Projects",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: TextField(
                controller: projectController,
                 onChanged: (val) {
                   setState((){
                     projectTitle = projectController.text;
                //   //   print('$projectTitle =============>');
                    });
                //
                 },
                decoration: const InputDecoration(
                  hintText: 'Project Title',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: TextField(
                controller: companyNameController,

                decoration: const InputDecoration(
                  hintText: 'Company Name',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: TextField(
                controller: projectUrlController,
                decoration: const InputDecoration(
                  hintText: 'Project URL',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: TextField(
               controller: customerNameController,
                decoration: const InputDecoration(
                  hintText: 'Client/Customer Name',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: TextField(
             controller: customerUrlController,
                decoration: const InputDecoration(
                  hintText: 'Client/Customer URL',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: TextField(
                controller: projectToolsController,
                decoration: const InputDecoration(
                  hintText: 'Tools(e.g. MS Word MS Excel)',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: TextField(
                controller: projectDescriptionController,
                focusNode: _focusNode,
                textInputAction: TextInputAction.newline,
                // keyboardType: TextInputType.,
                // onEditingComplete: () {
                //   print("Edit");
                //   _focusNode.unfocus();
                // },
                minLines: 1,
                maxLength: 300,
                maxLines: null,
                decoration: const InputDecoration(
                  // suffixIcon: Icon(Icons.check),
                  hintText: 'Add Description',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            userProfileButton(
                text: 'Save',
                onPressed: () {
                  // for (int i = 0; i < projectComponents.length; i++) {
                  //   if (projectComponents[i] !='') {
print(projectObj);
                  // getProjectdata.projectList.add(projectObj);
                  //   }
                  // }
                  //         if(
                  //         projectTitle&&
                  //          companyName&&
                  //         projectUrl&&
                  //         customerName&&
                  //         customerURL&&
                  //         projectTools&&
                  //         projectDescription
                  //            !='' ){
                  //           print('not equal');
                  //           // getProjectdata.projectList.add(projectObj);
                  //
                  //         }
                  //         else{
                  //           print('equal');
                  //         }
                  // print('${getProjectdata.projectList} List of project');
                }),
          ],
        ),
      ),
    );
  }
}
