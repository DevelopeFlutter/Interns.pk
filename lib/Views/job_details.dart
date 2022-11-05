// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Job%20Found.dart';

import '../Authentication/Controller/Job_Get_Controller.dart';

class Jobdetails extends StatefulWidget {
  String?  JobTitle;
  String? JobLocation;
  String? JobType;
  String? JobDescription;
   Jobdetails( this.JobLocation, this.JobTitle, this.JobType, this.JobDescription);

  @override
  State<Jobdetails> createState() => _JobdetailsState();
}

class _JobdetailsState extends State<Jobdetails> {
  @override
  Widget build(BuildContext context) {
   // print('${GetObj.data } This is the JobDetails class data');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolors.greenishText,
          title: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Job Details"),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 26,
              ))),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25, left: 20),
                    child: Column(
                      children:  [
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Text('${widget.JobTitle}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 25, top: 7),
                          child: Text("${widget.JobLocation}"),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 85, top: 7),
                          child: Text("04/29/2022"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 55,
                    width: 170,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 19, top: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const JobApplied()));
                        },
                        child: const Text("Apply"),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(appcolors.greenishText),                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Image.asset(
                  "assets/images/All Native Designs.png",
                  height: 100,
                  width: 100,
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all( 12),
            child: Divider(
              color: Colors.grey,
              height: 20,
              thickness: 2,
            ),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        children: const [
                          Text(
                            "Job Type",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        children:  [
                          Text("${widget.JobType}"),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Job Description",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                          ),
                          child: Row(
                            children:  [
                              Expanded(
                                child: Text("${widget.JobDescription}",
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: false,
                                  maxLines: 7,
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
