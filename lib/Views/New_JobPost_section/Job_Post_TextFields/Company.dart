import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/New_JobPost_section/GetX_class.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post.dart';
import 'package:get/get.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post_TextFields/Reuseable_TextField_class.dart';

class Add_Company extends StatefulWidget {
  const Add_Company({Key? key}) : super(key: key);

  @override
  State<Add_Company> createState() => _Add_CompanyState();
}

class _Add_CompanyState extends State<Add_Company> {
  TextEditingController CompanyController = TextEditingController();
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
                  "Company",
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
        body:  SizedBox(
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
                  CompanyController.text = value;
                  CompanyController.selection = TextSelection.fromPosition(
                      TextPosition(offset:CompanyController.text.length));
                  setState(() {
                    controller1.AddCompanyVal(CompanyController.text);
                  });
                },
                controller: CompanyController,
                //Controller,
                decoration: InputDecoration(
                  suffixIcon: ForIcon ?IconButton(onPressed: (){
                    CompanyController.clear();
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
    );
  }
}
