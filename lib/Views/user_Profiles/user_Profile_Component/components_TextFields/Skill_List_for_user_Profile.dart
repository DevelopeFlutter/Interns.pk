// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, avoid_single_cascade_in_expression_statements
import 'package:interns/Authentication/Controller/User_Profile_Controller.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
class UserProfileSkills extends StatefulWidget {
  const UserProfileSkills({Key? key}) : super(key: key);
  @override
  State<UserProfileSkills> createState() => _UserProfileSkillsState();
}
class _UserProfileSkillsState extends State<UserProfileSkills> {
  Userprofile skillController =  Get.put(Userprofile());

  List skillList =['Flutter Developer','React_native ','HTML Developer','Boostrap Developer','PHP Developer'];
 void removeObject(){
   if(skillController.skills.isNotEmpty){
     List newArr = skillList;
     for (int i = 0; i<skillController.skills.length; i++){
       var skill = skillController.skills[i];
       newArr.removeWhere((element) => skill == element);
       }}
  }
  @override
   initState(){
removeObject();
    super.initState();
  }
  bool ForIcon = false;
  TextEditingController SkillController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // Get.to(const MyProfile());
            Get.back();
          },
          icon:const Icon(
            Icons.west,
            color: appcolors.greenishText,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: const [
              Text(
                "Add your skill",
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
      body: TypeAheadFormField(
          onSuggestionSelected: ( dynamic val) {
              skillController.skills.add(val);
              SkillController.text =val;
              Get.back();
          },
          itemBuilder: (context, dynamic item) {
            return ListTile(title: Text(item));
          },
          suggestionsCallback: (pattern) => skillList.where((element) =>
              element.toLowerCase().contains(pattern.toLowerCase())),
          hideSuggestionsOnKeyboardHide: true,
          noItemsFoundBuilder: (context) => const Padding(
            padding: EdgeInsets.only(
              left: 8,
            ),
            child: Text("No item Found"),
          ),
          textFieldConfiguration: TextFieldConfiguration(
            autofocus: true,
            onChanged: (dynamic value) {
              if (value.isEmpty) {
                setState(() {
                  ForIcon = false;
                });
              } else {
                setState(() {
                  ForIcon = true;
                });
              }
              SkillController.text = value ;
              SkillController.selection = TextSelection.fromPosition(
                  TextPosition(offset:SkillController.text.length));
              setState(() {

                // skillController.skills.value=value ;
              });
            },
            controller: SkillController,

            decoration: InputDecoration(
                suffixIcon: ForIcon ?IconButton(onPressed: (){
                  SkillController.clear();
                  setState(() {
                    ForIcon = false;
                  });
                }, icon: const Icon(Icons.close,color: appcolors.greenishText,)):null,
                hintText:  "Search...",contentPadding: const EdgeInsets.only(left: 15,top: 15)

            ),
          )),
    );
  }
}
