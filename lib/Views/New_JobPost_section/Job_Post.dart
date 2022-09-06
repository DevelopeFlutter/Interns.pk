import 'package:flutter/material.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/New_JobPost_section/GetX_class.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/Add_Description.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/Company.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/Job_Location.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/job_title.dart';
import 'package:get/get.dart';
import 'package:interns/utils/loader.dart';
import '../../utils/showMessage.dart';
class JobPost extends StatefulWidget {
  const JobPost({Key? key}) : super(key: key);
  @override
  State<JobPost> createState() => _JobPostState();
}
class _JobPostState extends State<JobPost> {
  JobPostController controller1 = Get.put(JobPostController());
   var _result;
  void JobPostForm() async {
    FocusScope.of(context).unfocus();
    try {
      PopupLoader.show();
      var authResponse = await jobPost(
       controller1.AddCompany.toString(),
       // '',
        controller1.JobTitle.toString(),
        controller1.JobLocation.toString(),
        controller1.AddDescription.toString(),
        controller1.SetWorkPlacValue.toString(),
        controller1.SetJobTypeValue.toString(),
          );
      PopupLoader.hide();
       print('${controller1.JobTitle.toString()} this is the job Jobtitle ');
      print('${controller1.JobLocation.toString()} this is the job JobLocation');
      print('${controller1.AddCompany.toString()} this is the job AddCompany ');
      print('${controller1.AddDescription.toString()} this is the job AddDescription ');
      print('${ controller1.SetWorkPlacValue.toString()} RadioButton Value');
      print('${ controller1.SetJobTypeValue.toString()} RadioButttoValue');

      if (authResponse["content"]['status'] == 200) {
        ShowMessage().showMessage(context, 'Successfully JobPost');
        // Navigator.push(context,
        //     MaterialPageRoute(builder:(context) => const homePageView()));

      } else {
        ShowMessage().showErrorMessage(context, 'Some Error');
        print("message");
      }
    } catch (e) {
      PopupLoader.hide();
      print(['SubmitLogin Exception:', e.toString()]);
    }
  }

  @override
  Widget build(BuildContext context) {

    var Fulltime ="Full-time";
    var PartTime = "Part-time";
    var Onsite= "On-site";
    var Remote= "Remote";
    var Hybrid= "Hybrid";
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.close,
                color: appcolors.greenishText,
              )),
          title: Row(
            children: const [
              Text(
                "Create a job",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              )
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 30),
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
                              "Job title",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Add job title",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: appcolors.greenishText),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const JobPost_title()));
                            },
                            icon: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1, color: appcolors.greenishText),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: appcolors.greenishText,
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 5),
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
                              "Workplace type",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "On-site",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                              onPressed: () {
                                // ModalBottomSheetWorkPlace.moreModalBottomSheet(
                                //     context);
                                showModalBottomSheet(
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          topLeft: Radius.circular(30),
                                        )),
                                    context: context,
                                    builder: (context) {
                                      return StatefulBuilder(

                                        builder: (BuildContext context, StateSetter setState ) {

                                          // void  groupvalue(  value){
                                          //  }
                                          return SizedBox(
                                            height: 240,
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
                                                    "Choose the workplace type",
                                                    style: TextStyle(
                                                        fontSize: 18, fontWeight: FontWeight.w500),
                                                  ),
                                                ),
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 30, top: 5),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.baseline,
                                                            textBaseline: TextBaseline.ideographic,
                                                            children: [
                                                              Text(
                                                                "On-site",
                                                                style: TextStyle(
                                                                    fontSize: 16,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: Colors.black.withOpacity(0.7)),
                                                              ),
                                                              const SizedBox(
                                                                height: 2,
                                                              ),
                                                              Text(
                                                                "Employees come to work in-person.",
                                                                style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Colors.black.withOpacity(0.7),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 10),
                                                            child: Transform.scale(
                                                              scale: 1.2,
                                                              child: Radio(
                                                                fillColor: MaterialStateColor.resolveWith(
                                                                        (states) => appcolors.greenishText),
                                                                value: 1,
                                                                groupValue: _result,

                                                                onChanged: (value,){

                                                                  setState(() {
                                                                    _result= value;

                                                                    controller1.WorkPlaceTypeValue(Onsite);
                                                                  }
                                                                  ); },
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
                                                      padding: const EdgeInsets.only(left: 30, top: 5),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.baseline,
                                                            textBaseline: TextBaseline.ideographic,
                                                            children: [
                                                              Text(
                                                                "Hybrid",
                                                                style: TextStyle(
                                                                    fontSize: 16,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: Colors.black.withOpacity(0.7)),
                                                              ),
                                                              const SizedBox(
                                                                height: 2,
                                                              ),
                                                              Text(
                                                                "Employees work on-site and off-site",
                                                                style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Colors.black.withOpacity(0.7),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 10),
                                                            child: Transform.scale(
                                                              scale: 1.2,
                                                              child: Radio(
                                                                fillColor: MaterialStateColor.resolveWith(
                                                                        (states) => appcolors.greenishText),
                                                                value: 2,
                                                                groupValue: _result,
                                                                onChanged: (value,){

                                                                  setState(() {
                                                                    _result= value;

                                                                    controller1.WorkPlaceTypeValue(Hybrid);
                                                                  }

                                                                  ); },
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
                                                      padding: const EdgeInsets.only(left: 30, top: 5),
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment: CrossAxisAlignment.baseline,
                                                            textBaseline: TextBaseline.ideographic,
                                                            children: [
                                                              Text(
                                                                "Remote",
                                                                style: TextStyle(
                                                                    fontSize: 16,
                                                                    fontWeight: FontWeight.w600,
                                                                    color: Colors.black.withOpacity(0.7)),
                                                              ),
                                                              const SizedBox(
                                                                height: 2,
                                                              ),
                                                              Text(
                                                                "Employees work off-site",
                                                                style: TextStyle(
                                                                  fontSize: 14,
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Colors.black.withOpacity(0.7),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding: const EdgeInsets.only(right: 10),
                                                            child: Transform.scale(
                                                              scale: 1.2,
                                                              child: Radio(
                                                                fillColor: MaterialStateColor.resolveWith(
                                                                        (states) => appcolors.greenishText),
                                                                value: 3,
                                                                groupValue: _result,
                                                                onChanged:(value,){
                                                                  setState(() {
                                                                    _result= value;
                                                                    controller1.WorkPlaceTypeValue(Remote);
                                                                  }
                                                                  ); },
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
                              icon: const Icon(Icons.edit)),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
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
                              "Job Location",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Lahore District, Punjab",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const JobPost_Location()));
                            },
                            icon: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1, color: appcolors.greenishText),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: appcolors.greenishText,
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 10),
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
                              "Company",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Add company",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    color: appcolors.greenishText),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: IconButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Add_Company()));
                            },
                            icon: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 1, color: appcolors.greenishText),
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: appcolors.greenishText,
                                )),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(),
              Column(
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
                              "Job Type",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Full-time",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {

                              showModalBottomSheet(
                                  shape: const RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(30),
                                        topLeft: Radius.circular(30),
                                      )),
                                  context: context,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context, StateSetter setState ) {
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
                                                      fontSize: 18, fontWeight: FontWeight.w500),
                                                ),
                                              ),
                                              Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 30, top: 5),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Full-time",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                              color: Colors.black.withOpacity(0.7)),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(right: 10),
                                                          child: Transform.scale(
                                                            scale: 1.2,
                                                            child: Radio(
                                                              fillColor: MaterialStateColor.resolveWith(
                                                                      (states) => appcolors.greenishText),
                                                              value:1,
                                                              //Value='Full-time',
                                                              groupValue: _result,
                                                              onChanged:(value){

                                                                setState(() {
                                                                  _result= value;
                                                                  controller1.JobTypeValue(Fulltime);
                                                                }

                                                                ); }
                                                              //groupvalue,

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
                                                    padding: const EdgeInsets.only(left: 30, top: 5),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Text(
                                                          "Part-time",
                                                          style: TextStyle(
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w600,
                                                              color: Colors.black.withOpacity(0.7)),
                                                        ),
                                                        Padding(
                                                          padding: const EdgeInsets.only(right: 10),
                                                          child: Transform.scale(
                                                            scale: 1.2,
                                                            child: Radio(
                                                              fillColor: MaterialStateColor.resolveWith(
                                                                      (states) => appcolors.greenishText),
                                                              value:2,
                                                              groupValue: _result,
                                                              onChanged: (value){
                                                                setState(() {
                                                                  _result= value;
                                                                  controller1.JobTypeValue(PartTime);
                                                                });
                                                              }
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
                            icon: const Icon(Icons.edit))
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
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
                              "Description",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 5),
                            child: Container(
                              height: 80,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(0.3),
                                      width: 1),
                                  borderRadius: BorderRadius.circular(3)),
                              child: const Padding(
                                padding: EdgeInsets.only(top: 12, left: 7),
                                child: Text(
                                  "Add Skills and requirements you're looking for.",
                                  style: TextStyle(color: Colors.black54),
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
                // margin: EdgeInsets.only(bottom: 20),
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
                       JobPostForm();
                      // GeTJob().GetJob();
                      print("The Onpressed is Called");
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
