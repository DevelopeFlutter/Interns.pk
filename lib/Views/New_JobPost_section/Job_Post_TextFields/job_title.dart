import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/New_JobPost_section/GetX_class.dart';
import 'package:get/get.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/Reuseable_TextField_class.dart';

class JobPost_title extends StatefulWidget {
  const JobPost_title({Key? key}) : super(key: key);

  @override
  State<JobPost_title> createState() => _JobPost_titleState();
}

class _JobPost_titleState extends State<JobPost_title> {
  TextEditingController JobTitleController = TextEditingController();
  JobPostController controller1 = Get.put(JobPostController());

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
              Icons.west,
              color: appcolors.greenishText,
            ),
          ),
          title: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: const [
                Text(
                  "Job Title",
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
        body: Column(children: [
          SizedBox(
          height: 200,
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  if (value.length <= 0) {
                    setState(() {
                      ForIcon = false;
                    });
                  } else {
                    setState(() {
                      ForIcon = true;
                    });
                  }
                  JobTitleController.text = value;
                  JobTitleController.selection = TextSelection.fromPosition(
                      TextPosition(offset:  JobTitleController.text.length));
                  setState(() {
                    controller1.JobTitleVal(JobTitleController.text);
                  });
                },
                controller: JobTitleController,
                decoration: InputDecoration(
                  suffixIcon: ForIcon ?IconButton(onPressed: (){
                    JobTitleController.clear();
                    setState(() {
                      ForIcon = false;
                    });
                  }, icon: const Icon(Icons.close,color: appcolors.greenishText,)):null,
                  hintText:  "Search...",

                ),
              ),
            ],
          ),
        )
        ],));
  }
}
