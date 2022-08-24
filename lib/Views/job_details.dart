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
                                  builder: (context) => const JobFound()));
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
                    // Padding(
                    //   padding: const EdgeInsets.only(top: 8.0, left: 20),
                    //   child: Row(
                    //     children: const [
                    //       Text("Skill",
                    //       style: TextStyle(
                    //         fontSize: 16
                    //       ),),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 7),
                    //   child: Row(
                    //     children: <Widget>[
                    //       Container(
                    //         child: const Text("C#"),
                    //         color: Colors.grey.withOpacity(0.2),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 8.0),
                    //         child: Container(
                    //           child: const Text("HTML5"),
                    //           color: Colors.grey.withOpacity(0.2),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 8.0),
                    //         child: Container(
                    //           child: const Text("CSS3"),
                    //           color: Colors.grey.withOpacity(0.2),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 8.0),
                    //         child: Container(
                    //           child: const Text("MVC"),
                    //           color: Colors.grey.withOpacity(0.2),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 8.0),
                    //         child: Container(
                    //           child: const Text("SVN"),
                    //           color: Colors.grey.withOpacity(0.2),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 8),
                    //         child: Container(
                    //           child: const Text("Java Script"),
                    //           color: Colors.grey.withOpacity(0.2),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 10),
                    //   child: Row(
                    //     children: <Widget>[
                    //       Container(
                    //         child: const Text("Web Applications"),
                    //         color: Colors.grey.withOpacity(0.2),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 8.0),
                    //         child: Container(
                    //           child: const Text("ASP.NET"),
                    //           color: Colors.grey.withOpacity(0.2),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 8.0),
                    //         child: Container(
                    //           child: const Text("Microsoft Visual Studio",
                    //           style: TextStyle(
                    //             fontSize: 14
                    //           ),),
                    //           color: Colors.grey.withOpacity(0.2),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 10),
                    //   child: Row(
                    //     children: <Widget>[
                    //       Container(
                    //         child: const Text("cosmosdb"),
                    //         color: Colors.grey.withOpacity(0.3),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 8.0),
                    //         child: Container(
                    //           child: const Text("documentdb"),
                    //           color: Colors.grey.withOpacity(0.3),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // const Padding(
                    //   padding: EdgeInsets.all(12.0),
                    //   child: Divider(
                    //     color: Colors.grey,
                    //     thickness: 2,
                    //   ),
                    // ),
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
                    // Row(
                    //   children: const [
                    //     Padding(
                    //       padding: EdgeInsets.only(top: 7, left: 20),
                    //       child: Text(
                    //         "We are looking for Mobile App Developer",
                    //         style: TextStyle(fontWeight: FontWeight.bold),
                    //       ),
                    //     ),
                    //   ],
                    // ),
                    // Row(
                    //   children: const [
                    //     Padding(
                    //       padding: EdgeInsets.only(left: 20, top: 12),
                    //       child: Text("Requirements:",
                    //           style: TextStyle(fontWeight: FontWeight.bold,
                    //           fontSize: 16)),
                    //     ),
                    //   ],
                    // ),
                    Column(
                      children: [
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       Padding(
                        //         padding: const EdgeInsets.only(left: 13),
                        //         child: const Text(
                        //           "Strong Knowledge of HTML5,CSS3",
                        //           softWrap: false,
                        //           textAlign: TextAlign.left,
                        //           maxLines: 1,
                        //           overflow: TextOverflow.fade,
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.only(left: 13),
                        //         child: Text(
                        //             "Expert in Angular 2+ with Typescript"),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.only(left: 13),
                        //         child: Text(
                        //             "Knowledge of mobile development "),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.only(left: 13),
                        //         child: Text(
                        //             "Expert in MVC.NET and WebAPI using ASP.NET"),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.only(left: 13),
                        //         child: Text(
                        //             "Hands-on experience in MS"),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.only(left: 13),
                        //         child: Text("Can Use WebAPIs"),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.only(left: 13),
                        //         child: Text(
                        //             "Working experience of SVN or other source "),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.only(left: 13),
                        //         child: Text(
                        //             "years of experience in above mentioned"),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.only(left: 13),
                        //         child: Text(
                        //             "Bachelor's Degree from an accredited "),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // const Padding(
                        //   padding: EdgeInsets.only(top: 13),
                        //   child: Divider(
                        //     color: Colors.grey,
                        //     thickness: 1.5,
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 20),
                        //   child: Row(
                        //     children: const [
                        //       Text(
                        //         "Good to have",
                        //         style: TextStyle(fontWeight: FontWeight.bold,
                        //         fontSize: 16),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       const Padding(
                        //           padding: EdgeInsets.only(left: 13),
                        //           child: Text(
                        //               "Bachelor's Degree from an accredited"))
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(top: 8.0, left: 40),
                        //   child: Row(
                        //     children: [
                        //       Container(
                        //         decoration: const BoxDecoration(
                        //             color: Colors.black,
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(20))),
                        //         height: 5,
                        //         width: 5,
                        //       ),
                        //       const Padding(
                        //         padding: EdgeInsets.only(left: 13),
                        //         child: Text("SQL Server"),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 20, top: 30),
                        //   child: Row(
                        //     children: const [
                        //       Text(
                        //         "What we Offer",
                        //         style: TextStyle(fontWeight: FontWeight.bold,
                        //         fontSize: 16),
                        //       ),
                        //     ],
                        //   ),
                        // ),
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
                        // Padding(
                        //   padding: const EdgeInsets.only(left: 20),
                        //   child: Row(
                        //     children: const [
                        //       Text(
                        //         "Location:",
                        //         style: TextStyle(fontWeight: FontWeight.bold,
                        //         fontSize: 16),
                        //       ),
                        //       Text("Gulberg |||, Lahore."),
                        //     ],
                        //   ),
                        // ),
                        // const Padding(
                        //   padding: EdgeInsets.all(12),
                        //   child: Divider(
                        //     color: Colors.grey,
                        //     thickness: 2,
                        //   ),
                        // )
                      ],
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 5),
                    //   child: Row(
                    //     children: const [
                    //       Text(
                    //         "Industry",
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.black87),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 5),
                    //   child: Row(
                    //     children: const [
                    //       Text("Information Technology"),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 5),
                    //   child: Row(
                    //     children: const [
                    //       Text(
                    //         "Functional Area",
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.black87),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 5),
                    //   child: Row(
                    //     children: const [
                    //       Text("Software & Web Developement "),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 5),
                    //   child: Row(
                    //     children: const [
                    //       Text(
                    //         "Total Positions",
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.black87),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 5),
                    //   child: Row(
                    //     children: const [
                    //       Text("1",
                    //       style: TextStyle(
                    //         fontSize: 16
                    //       ),),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top:5),
                    //   child: Row(
                    //     children: const [
                    //       Text(
                    //         "Job Location",
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.black87),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 20, top: 5),
                    //   child: Row(
                    //     children: const [
                    //       Text("Lahore,Pakistan"),
                    //     ],
                    //   ),
                    // ),

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
