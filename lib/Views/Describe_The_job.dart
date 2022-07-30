import 'package:flutter/material.dart';

import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Button.dart';
import 'package:interns/Views/Review_The_job_Post.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:interns/Views/container_with-image.dart';

import 'Back_Icon_Container.dart';
import 'package:dotted_border/dotted_border.dart';

class Describejob extends StatefulWidget {
  const Describejob({Key? key}) : super(key: key);
  @override
  State<Describejob> createState() => _DescribejobState();
}

class _DescribejobState extends State<Describejob> {
  bool isBold = false;
  bool Italic = false;
  void StatChange2() {
    setState(() {
      Italic = !Italic;
    });
  }

  void Statechange() {
    setState(() {
      isBold = !isBold;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: SingleChildScrollView(
            child: Column(children: [
          Stack(alignment: AlignmentDirectional.topStart, children: [
            Padding(
                padding: const EdgeInsets.only(
                  top: 18,
                  left: 10,
                ),
                child: Containar(
                  image: 'assets/images/writing.png',
                  TopLeftCirculer: 20,
                  TopRightCirculer: 0,
                  BottomLeftCirculer: 20,
                  BottomRightCirculer: 0,
                )),
            Padding(
              padding: const EdgeInsets.only(
                top: 35,
                left: 25,
              ),
              child: TextForContainer(
                text: "Describe the job",
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Container(
                width: double.infinity,
                height: 260.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    // bottomLeft: Radius.circular(20),
                  ),
                ),
                child: Column(children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 17, top: 20),
                      child: Text(
                        "About this job",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 12),
                    child: Row(
                      children: [
                        Text(
                          "We use this information to find the best\ncandidates for this job.",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black.withOpacity(0.6)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, top: 12),
                    child: Row(
                      children: [
                        const Icon(Icons.business_center),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "Software Developer",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, left: 16),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on_rounded),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            "Lahore",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 30),
                      child: Text(
                        "Advertising location",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.9)),
                      ),
                    ),
                  ),
                ])),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 10),
            child: Container(
              height: 600,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(15))),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, top: 30),
                      child: Text(
                        "Job description",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(0.9)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Describe the responsibilities of this  job, required work experience, skills or education.",
                      style: TextStyle(
                          fontSize: 17, color: Colors.black.withOpacity(0.6)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: TextButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Dialog(
                                        insetPadding: const EdgeInsets.all(10),
                                        child: SizedBox(
                                          height: 400,
                                          child: Column(children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 15),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 25),
                                                    child: Text(
                                                      "Upload a job description",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.9)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15),
                                                    child: IconButton(
                                                        onPressed: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        icon: const Icon(
                                                            Icons.close)),
                                                  )
                                                ],
                                              ),
                                            ),
                                            const Padding(
                                              padding: EdgeInsets.only(top: 10),
                                              child: Divider(),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 25, top: 20),
                                              child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "Acceptable files: .pdf, .docx",
                                                    style: TextStyle(
                                                        color: Colors.black
                                                            .withOpacity(0.6)),
                                                  )),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10),
                                              child: SizedBox(
                                                height: 150,
                                                width: 230,
                                                child: DottedBorder(
                                                  borderType: BorderType.RRect,
                                                  color: Colors.black54,
                                                  strokeWidth: 1.5,
                                                  dashPattern: [3, 3],
                                                  radius:
                                                      const Radius.circular(10),
                                                  child: Column(
                                                    children: [
                                                      IconButton(
                                                        onPressed: () {
                                                          _launchURL();
                                                        },
                                                        icon: const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 15,
                                                                  top: 10),
                                                          child: Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Icon(
                                                                Icons
                                                                    .file_upload,
                                                                color: appcolors
                                                                    .greenishText,
                                                              )),
                                                        ),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 23),
                                                        child: Text(
                                                          "Drag and drop here, or",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                top: 5,
                                                                left: 20),
                                                        child: Text(
                                                          "Select a file",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              color: appcolors
                                                                  .greenishText),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const Divider(),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15, top: 30),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 35),
                                                    child: SizedBox(
                                                      height: 50,
                                                      width: 100,
                                                      child: Elevatedbutton(
                                                          'Cancel', () {}),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            right: 15),
                                                    child: SizedBox(
                                                      height: 50,
                                                      width: 100,
                                                      child: Elevatedbutton(
                                                          'Upload', () {}),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ]),
                                        ));
                                  });
                            },
                            child: const Text(
                              "Upload a PDF or DOCX",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: appcolors.greenishText,
                              ),
                            ))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 8.0, left: 18, right: 20),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(6),
                              topLeft: Radius.circular(6))),
                      child: Row(
                        children: [
                          TextButton(
                            onPressed: () {
                              Statechange();
                            },
                            child: const Icon(
                              Icons.format_bold,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              StatChange2();
                            },
                            child: const Icon(
                              Icons.format_italic,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Icon(
                              Icons.format_list_bulleted,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18),
                    child: TextField(
                      style: TextStyle(
                          fontWeight:
                              isBold ? FontWeight.w800 : FontWeight.normal,
                          fontStyle:
                              Italic ? FontStyle.italic : FontStyle.normal),
                      maxLines: 12,
                      maxLength: 300,
                      decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black12, width: 2))),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 8, bottom: 8),
            child: Container(
              width: double.infinity,
              height: 170.0,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                //  border: Border.all(width: 5,color: Colors.red)
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 15,
                          right: 15,
                        ),
                        child: Elevatedbutton('Save and continue', () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ReviewjobPost()),
                          );
                        }),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10, left: 15, right: 15),
                    child: Back(),
                  ),
                ],
              ),
            ),
          ),
        ])));
  }

  _launchURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
