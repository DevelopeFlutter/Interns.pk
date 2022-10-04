// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
import '../../../Authentication/Controller/GetX_class_For_JobPost.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_typeahead/flutter_typeahead.dart';

class JobPost_Title extends StatefulWidget {
  const JobPost_Title({Key? key}) : super(key: key);
  @override
  State<JobPost_Title> createState() => _JobPost_TitleState();
}
class _JobPost_TitleState extends State<JobPost_Title> {
  TextEditingController jobTitleController = TextEditingController();
  JobPostController getjobTitledata = Get.put(JobPostController());
  @override
  void initState() {
    super.initState();
    // jobTitleController = TextEditingController();
  }

  static const jobTitleList = [
    'Assistant Manager',
    'Flutter Developer',
    'ReactNative Developer',
    'Android Developer'
  ];
  bool forIcon = false;
  @override
  Widget build(BuildContext context) {
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
                  "Job title",
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
            onSuggestionSelected: (String val) {
              setState(() {
                jobTitleController.text =val;
                getjobTitledata.jobTitleVal(jobTitleController.text);
              });
            },
            itemBuilder: (context, String item) {
              return ListTile(title: Text(item));
            },
            suggestionsCallback: (pattern) => jobTitleList.where((element) =>
                element.toLowerCase().contains(pattern.toLowerCase())),
            hideSuggestionsOnKeyboardHide: true,
            noItemsFoundBuilder: (context) => const Padding(
                  padding: EdgeInsets.only(
                    left: 8,
                  ),
                  child: SizedBox(
                      height:100,child: Text("No item Found",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                ),
            textFieldConfiguration: TextFieldConfiguration(
              autofocus: true,
              onChanged: (value) {
                if (value.isEmpty) {
                  setState(() {
                    forIcon = false;
                  });
                } else {
                  setState(() {
                    forIcon = true;
                  });
                }
                jobTitleController.text = value;
                jobTitleController.selection = TextSelection.fromPosition(
                    TextPosition(offset: jobTitleController.text.length));
                setState(() {
                  getjobTitledata.jobTitleVal(jobTitleController.text.toString());
                });
              },
              controller: jobTitleController,
              decoration: InputDecoration(
                  suffixIcon: forIcon
                      ? Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: GestureDetector(
                              onTap: () {
                                jobTitleController.clear();
                                setState(() {
                                  forIcon = false;
                                });
                              },
                              child: const Icon(
                                Icons.close,
                                color: appcolors.greenishText,
                              )),
                        )
                      : null,
                  hintText: "Search...",
                  contentPadding: const EdgeInsets.only(top: 20, left: 17)),
            )));
  }
}
