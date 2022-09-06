import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/New_JobPost_section/GetX_class.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post.dart';
import 'package:get/get.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/Reuseable_TextField_class.dart';

class JobPost_Location extends StatefulWidget {
  const JobPost_Location({Key? key}) : super(key: key);

  @override
  State<JobPost_Location> createState() => _JobPost_LocationState();
}

class _JobPost_LocationState extends State<JobPost_Location> {
  TextEditingController JobLocationController = TextEditingController(text: '');
  JobPostController controller1 = Get.put(JobPostController());

  bool  ForIcon = false;
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
                  "Job Location",
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
        body: Column(
          children: [
            Text(controller1.JobTitle.toString()),
            const Padding(
              padding: EdgeInsets.only(left: 12, top: 12),
              child: Text(
                "This will be shown to job seekers searching for on-site jobs in this location.",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
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
                      JobLocationController.text = value;
                      JobLocationController.selection =
                          TextSelection.fromPosition(TextPosition(
                              offset: JobLocationController.text.length));
                      setState(() {
                        controller1.JobLocationVal(JobLocationController.text);
                      });
                    },
                    controller: JobLocationController,
                    //Controller,
                    decoration: InputDecoration(
                      suffixIcon: ForIcon
                          ? IconButton(
                              onPressed: () {
                                JobLocationController.clear();
                                setState(() {
                                  ForIcon = false;
                                });
                              },
                              icon: const Icon(
                                Icons.close,
                                color: appcolors.greenishText,
                              ))
                          : null,
                      hintText: "Search...",
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
