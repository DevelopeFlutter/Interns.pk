// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/ElevatedButton.dart';
import '../../../Authentication/Controller/User_Profile_Controller.dart';
import 'package:get/get.dart';
import 'package:collection/collection.dart';
class ForAddProject extends StatefulWidget {
   ForAddProject({Key? key, required this.Index}) : super(key: key);
  dynamic Index;
  @override
  State<ForAddProject> createState() => _ForAddProjectState();
}
class _ForAddProjectState extends State<ForAddProject> {
  List projectComponents=[];
  dynamic projectObj='';
  final FocusNode _focusNode = FocusNode();
  dynamic projectTitle='' ;
  dynamic companyName='' ;
  dynamic projectUrl ='';
  dynamic customerName ='';
  dynamic customerURL = '';
  dynamic projectTools = '';
  dynamic projectDescription = '';
  dynamic data = Get.arguments;
  dynamic initialData ;
  List<dynamic> newList=[];
  @override
  void initState(){
    dynamic data = Get.arguments;
    projectTitle = data?['projectTitle'];
    companyName = data?['companyName'];
    projectUrl = data?['projectUrl'];
    customerName  =data?['customerName'];
    customerURL = data?['customerURL'];
    projectTools = data?['projectTools'];
    projectDescription = data?['projectDescription'];
    addData(true);
    super.initState();
  }
  addData(bool val){
    initialData = data;
  }
  @override
  didChangeDependencies(){
    super.didChangeDependencies();
  }
  Userprofile getProjectdata = Get.put(Userprofile());
  @override
  Widget build(BuildContext context) {
    projectComponents =[
      projectTitle,
      companyName,
      projectUrl,
      customerName,
      customerURL,
      projectTools,
      projectDescription
    ];

    projectObj = {
      'projectTitle': projectTitle,
      'companyName': companyName,
      'projectUrl': projectUrl,
      'customerName': customerName,
      'customerURL': customerURL,
      'projectTools': projectTools,
      'projectDescription': projectDescription
    };
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
            children:  [
              Text(
                data!=null?"Edit your Project":'Add your Project',
                style: const TextStyle(
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
              child: TextFormField(
                initialValue: data?['projectTitle'],
                 onChanged: (val) {
                   projectTitle= val;
                   setState((){

                  });
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
              child: TextFormField(
initialValue:data?['companyName'],
                onChanged: (val) {
       companyName =val;
                  setState((){
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Company Name',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: TextFormField(
                initialValue: data?['projectUrl'],
                onChanged:(val) {
                  projectUrl = val;
                  setState((){
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Project URL',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: TextFormField(
                initialValue: data?['customerName'],
                onChanged: (val) {
                  customerName =val;
                  setState((){
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Client/Customer Name',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: TextFormField(
                initialValue: data?['customerURL'],
                onChanged: (val) {
                  customerURL =val;
                  setState((){
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Client/Customer URL',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: TextFormField(
                initialValue: data?['projectTools'],
                onChanged: (val) {
                  projectTools =val;
                  setState((){
                  });
                },
                decoration: const InputDecoration(
                  hintText: 'Tools(e.g. MS Word MS Excel)',
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: TextFormField(
                initialValue: data?['projectDescription'],
                focusNode: _focusNode,
                textInputAction: TextInputAction.newline,

                onChanged:(val) {
                  projectDescription =val;
                  setState((){
                  });
                },
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
                  data == null ? pushDataTolist():upData();
                }
                ),

          ],
        ),
      ),
    );
  }
  void pushDataTolist(){
    bool isEmpty = false;
    for (int i = 0; i < projectComponents.length; i++) {
      if (projectComponents[i].isEmpty) {
        isEmpty = true;
      }
    }
    if(!isEmpty) {
      dynamic newList = projectObj;
      getProjectdata.projectList.add(newList);
      Get.back();
    }
  }
 void upData() {
   bool checkComponents = false;
   for (int i = 0; i < projectComponents.length; i++) {
      if (projectComponents[i].isEmpty) {
        checkComponents = true;
      }
    }
    Function deepEq = const DeepCollectionEquality().equals;
    var val = deepEq(initialData, projectObj);
    print('$val $checkComponents Two');
    if (!val &&!checkComponents) {
      newList.add(projectObj);
       print('$newList ======>');
      getProjectdata.projectList[widget.Index]=projectObj;
      Get.back();
    }
  }
}
