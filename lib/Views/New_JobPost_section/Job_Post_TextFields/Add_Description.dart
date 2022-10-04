// ignore_for_file: depend_on_referenced_packages, camel_case_types, non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interns/Theme/app_Colors.dart';
import '../../../Authentication/Controller/GetX_class_For_JobPost.dart';

class Add_Description extends StatefulWidget {
  const Add_Description({Key? key}) : super(key: key);

  @override
  State<Add_Description> createState() => _Add_DescriptionState();
}

class _Add_DescriptionState extends State<Add_Description> {
  TextEditingController DescriptionController = TextEditingController();
  JobPostController getDescriptionData = Get.put(JobPostController());
  bool ForIcon = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: appcolors.greenishText,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: const [
              Text(
                "Description",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 19,
                    color: Colors.black),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: TextField(
        onChanged: (value) {
          if (value.isEmpty) {
            setState(() {
              ForIcon = false;
            });
          } else {
            setState(() {
              ForIcon = true;
            });
          }
          DescriptionController.text = value;
          DescriptionController.selection = TextSelection.fromPosition(
              TextPosition(offset: DescriptionController.text.length));
          setState(() {
            getDescriptionData
                .addDescriptionVal(DescriptionController.text);
          });
        },
        controller: DescriptionController,
        decoration: InputDecoration(
            border: InputBorder.none,
            suffixIcon: ForIcon
                ? IconButton(
                    onPressed: () {
                      DescriptionController.clear();
                      setState(() {
                        ForIcon = false;
                      });
                    },
                    icon: const Icon(
                      Icons.close,
                      color: appcolors.greenishText,
                    ))
                : null,
            hintText: "Add skills and requirements you're looking for.",
            hintStyle: const TextStyle(fontSize: 13,fontWeight: FontWeight.w400),
            contentPadding: const EdgeInsets.only(left: 10, top: 15)),
      ),
    );
  }
}
