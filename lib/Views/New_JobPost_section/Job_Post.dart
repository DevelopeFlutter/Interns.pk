// ignore_for_file: use_build_context_synchronously, unnecessary_null_comparison, depend_on_referenced_packages, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/Add_Description.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/Company.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/Job_Location.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/job_title.dart';
import 'package:get/get.dart';
import 'package:interns/utils/loader.dart';
import '../../utils/showMessage.dart';
import 'JobPost_Reuseable_Container.dart';
import '../../Authentication/Controller/GetX_class_For_JobPost.dart';
class JobPost extends StatefulWidget {
  const JobPost({Key? key}) : super(key: key);
  @override
  State<JobPost> createState() => _JobPostState();
}
class _JobPostState extends State<JobPost> {
  JobPostController jobPostData = Get.put(JobPostController());
  var _resultforworkplace ='On-site';
  var _resultforjobType = 'Full-time';
  @override
  initState() {
    jobPostData.workPlaceTypeValue(_resultforworkplace);
    jobPostData.JobTypeValue(_resultforjobType);
    super.initState();
  }
  void jobPostForm() async {
    var Company = jobPostData.AddCompany;
    var jobTilte = jobPostData.JobTitle;
    var jobLocation = jobPostData.JobLocation;
    var addDescription = jobPostData.AddDescription;
    var setworkplace = jobPostData.SetWorkPlacValue;
    var setJobTypeValue = jobPostData.SetJobTypeValue;
    List checkList=[
      Company,
      jobTilte,
      jobLocation,
      addDescription,
      setworkplace,
      setJobTypeValue
    ];
    bool isDataMissing = false;
    for (int i = 0; i<checkList.length;i++) {
      if (checkList[i]?.isEmpty?? true) {
        setState(() {
          isDataMissing = true;
        });
      }
    }
    if (!isDataMissing) {
      PopupLoader.show();
      try {
        var authResponse = await jobPost(
          jobPostData.AddCompany,
          jobPostData.JobTitle,
          jobPostData.JobLocation,
          jobPostData.AddDescription,
          jobPostData.SetWorkPlacValue,
          jobPostData.SetJobTypeValue,
        );

        PopupLoader.hide();
        if (authResponse["content"]['status'] == 200) {
          ShowMessage().showMessage(context, 'Successfully JobPost');
        } else {
          ShowMessage().showErrorMessage(context, 'Some Error');
          print("message");
        }
      } catch (e) {
        print(['SubmitLogin Exception:', e.toString()]);
      }
    }
    else{
      Get.defaultDialog(
        // contentPadding:EdgeInsets.zero ,
        middleText: 'Data is missing.',
        title: 'Missing!',
        confirm: GestureDetector(onTap: (){
          Get.back();
        }, child: const Text("Ok",style: TextStyle(fontSize: 18),),),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Create a job",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 30),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const JobPost_Title()));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              const Text(
                                "Job title*",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              GetBuilder<JobPostController>(
                                  // no need to initialize Controller ever again, just mention the type
                                  builder: (value) => Text(
                                        '${value.JobTitle ?? 'Add job title'}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: value.JobTitle == null
                                                ? appcolors.greenishText
                                                : Colors
                                                    .black), // counter is updated when increment() is called
                                      ))
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: GetBuilder<JobPostController>(
                                builder: (value) => value.JobTitle == null
                                    ? const PostIconContainer()
                                    : const Padding(
                                        padding: EdgeInsets.only(right: 15),
                                        child: Icon(
                                          Icons.edit,
                                          color: appcolors.greenishText,
                                        ),
                                      )),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
                child: InkWell(
                  onTap: () {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        )),
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(
                            builder:
                                (BuildContext context, StateSetter setState) {
                              dynamic workPlaceRadiovalue(value) {
                                setState(() {
                                  _resultforworkplace = value;
                                  jobPostData
                                      .workPlaceTypeValue(_resultforworkplace);
                                });
                              }

                              return SizedBox(
                                height: 240,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.ideographic,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Divider(
                                      color: Colors.black,
                                      thickness: 5,
                                      indent: 150,
                                      endIndent: 150,
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 30, top: 20),
                                      child: Text(
                                        "Choose the workplace type",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.baseline,
                                                textBaseline:
                                                    TextBaseline.ideographic,
                                                children: [
                                                  Text(
                                                    "On-site",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black
                                                            .withOpacity(0.7)),
                                                  ),
                                                  const SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    "Employees come to work in-person.",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black
                                                          .withOpacity(0.7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Transform.scale(
                                                  scale: 1.2,
                                                  child: Radio(
                                                    fillColor: MaterialStateColor
                                                        .resolveWith((states) =>
                                                            appcolors
                                                                .greenishText),
                                                    value: "On-site",
                                                    groupValue:
                                                        _resultforworkplace,
                                                    onChanged:
                                                        workPlaceRadiovalue,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.baseline,
                                                textBaseline:
                                                    TextBaseline.ideographic,
                                                children: [
                                                  Text(
                                                    "Hybrid",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black
                                                            .withOpacity(0.7)),
                                                  ),
                                                  const SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    "Employees work on-site and off-site",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black
                                                          .withOpacity(0.7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Transform.scale(
                                                  scale: 1.2,
                                                  child: Radio(
                                                    fillColor: MaterialStateColor
                                                        .resolveWith((states) =>
                                                            appcolors
                                                                .greenishText),
                                                    value: "Hybrid",
                                                    groupValue:
                                                        _resultforworkplace,
                                                    onChanged:
                                                        workPlaceRadiovalue,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 5),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.baseline,
                                                textBaseline:
                                                    TextBaseline.ideographic,
                                                children: [
                                                  Text(
                                                    "Remote",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Colors.black
                                                            .withOpacity(0.7)),
                                                  ),
                                                  const SizedBox(
                                                    height: 2,
                                                  ),
                                                  Text(
                                                    "Employees work off-site",
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black
                                                          .withOpacity(0.7),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 10),
                                                child: Transform.scale(
                                                  scale: 1.2,
                                                  child: Radio(
                                                    fillColor: MaterialStateColor
                                                        .resolveWith((states) =>
                                                            appcolors
                                                                .greenishText),
                                                    value: 'Remote',
                                                    groupValue:
                                                        _resultforworkplace,
                                                    onChanged:
                                                        workPlaceRadiovalue,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        });
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              const Text(
                                "Workplace type*",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              GetBuilder<JobPostController>(
                                builder: (value) => Text(
                                  "${value.SetWorkPlacValue}",
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 33),
                            child: Icon(Icons.edit),
                          )
                        ],
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const JobPost_Location()));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              const Text(
                                "Job Location*",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              GetBuilder<JobPostController>(
                                builder: (value) => Text(
                                  "${value.JobLocation ?? 'Lahore District, Punjab'}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: value.JobLocation == null
                                          ? appcolors.greenishText
                                          : Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: GetBuilder<JobPostController>(
                                builder: (value) => value.JobLocation == null
                                    ? const PostIconContainer()
                                    : const Padding(
                                        padding: EdgeInsets.only(right: 15),
                                        child: Icon(
                                          Icons.edit,
                                          color: appcolors.greenishText,
                                        ),
                                      )),
                          ),
                        ],
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Add_Company()));
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              const Text(
                                "Company*",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              GetBuilder<JobPostController>(
                                builder: (value) => Text(
                                  '${value.AddCompany ?? "Add company"}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: value.AddCompany == null
                                          ? appcolors.greenishText
                                          : Colors.black),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: GetBuilder<JobPostController>(
                                builder: (value) => value.AddCompany == null
                                    ? const PostIconContainer()
                                    : const Padding(
                                        padding: EdgeInsets.only(right: 15),
                                        child: Icon(
                                          Icons.edit,
                                          color: appcolors.greenishText,
                                        ),
                                      )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      )),
                      context: context,
                      builder: (BuildContext context) {
                        return StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            dynamic jobTypeRadiobuttonVal(value) {
                              setState(() {
                                _resultforjobType = value;
                                jobPostData.JobTypeValue(_resultforjobType);
                              });
                            }

                            return SizedBox(
                              height: 175,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.ideographic,
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                    thickness: 5,
                                    indent: 150,
                                    endIndent: 150,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 30, top: 20),
                                    child: Text(
                                      "Choose the job type",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, top: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Full-time",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black
                                                      .withOpacity(0.7)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Transform.scale(
                                                scale: 1.2,
                                                child: Radio(
                                                    fillColor: MaterialStateColor
                                                        .resolveWith((states) =>
                                                            appcolors
                                                                .greenishText),
                                                    value: 'Full-time',
                                                    groupValue:
                                                        _resultforjobType,
                                                    onChanged:
                                                        jobTypeRadiobuttonVal),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, top: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Part-time",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.black
                                                      .withOpacity(0.7)),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 10),
                                              child: Transform.scale(
                                                scale: 1.2,
                                                child: Radio(
                                                    fillColor: MaterialStateColor
                                                        .resolveWith((states) =>
                                                            appcolors
                                                                .greenishText),
                                                    value: "Part-time",
                                                    groupValue:
                                                        _resultforjobType,
                                                    onChanged:
                                                        jobTypeRadiobuttonVal

                                                    //groupvalue,
                                                    ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      });
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.ideographic,
                            children: [
                              const Text(
                                "Job type*",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              GetBuilder<JobPostController>(
                                builder: (value) => Text(
                                  "${value.SetJobTypeValue}",
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 33),
                            child: Icon(
                              Icons.edit,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Add_Description()));
                },
                child: SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Text(
                              "Description*",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 5),
                            child: Container(
                              height: 95,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.1),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(3)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 12, left: 7),
                                child: GetBuilder<JobPostController>(
                                  builder: (value) => Text(
                                    "${value.AddDescription ?? 'Add skills and requirements you\'re looking for.'}",
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      )),
                      backgroundColor:
                          MaterialStateProperty.all(appcolors.greenishText),
                    ),
                    onPressed: () {
                      jobPostForm();
                    },
                    child: const Text(
                      'Post',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
