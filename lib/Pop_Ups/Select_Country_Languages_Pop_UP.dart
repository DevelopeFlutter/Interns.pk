import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'Button_Class.dart';
var items1 = [
  'Urdu',
  'English',
  'Hindi',
  'Punjabi',
  'Pashto',
];
var items2 = [
  'Lahore',
  'Karachi',
  'Hyderabad',
  'Islamabad',
  'Multan',
];

String? dropdownvalue;
String? deopdownvalueForCity;

class SelectLanguageAndCountry {
  static Dialogue(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                insetPadding: const EdgeInsets.all(10),
                backgroundColor: Colors.white,
                child: SizedBox(
                    height: 540,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Column(children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 25),
                                child: Text(
                                  "Edit the job post",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black.withOpacity(0.9)),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 12),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(Icons.close)),
                              )
                            ],
                          ),
                          const Divider(
                            color: Colors.black54,
                          ),
                          const SizedBox(height: 22),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Language",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.9)),
                              ),
                            ),
                          ),


                          Padding(
                              padding:
                              const EdgeInsets
                                  .only(
                                  left: 25,
                                  top: 7,
                                  right: 25),
                              child: Container(
                                height: 50,
                                width:
                                double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appcolors
                                            .greenishText
                                            .withOpacity(
                                            0.4),
                                        width: 1.5),
                                    borderRadius:
                                    BorderRadius
                                        .circular(
                                        10)),
                                child: Padding(
                                  padding:
                                  const EdgeInsets
                                      .only(
                                      left: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      DropdownButtonHideUnderline(
                                        child:
                                        ButtonTheme(
                                          alignedDropdown:
                                          true,
                                          child: DropdownButton<
                                              String>(
                                              value:
                                              dropdownvalue,
                                              onChanged:
                                                  (value) {
                                                setState(() {
                                                  dropdownvalue = value;
                                                });
                                              },
                                              items: items1.map(
                                                      (valueitem) {
                                                    return DropdownMenuItem(
                                                        value: valueitem,
                                                        child: Padding(
                                                          padding: const EdgeInsets
                                                              .only(top: 12),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(valueitem),
                                                          ),
                                                        ));
                                                  }).toList(),
                                              icon:
                                              const Padding(
                                                padding:
                                                EdgeInsets.only(left: 180),
                                                child:
                                                Icon(
                                                  Icons.expand_more,
                                                  color: appcolors.greenishText,
                                                ),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          const SizedBox(height: 22),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "City",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.black.withOpacity(0.9)),
                              ),
                            ),
                          ),


                          Padding(
                              padding:
                              const EdgeInsets
                                  .only(
                                  left: 25,
                                  top: 7,
                                  right: 25),
                              child: Container(
                                height: 50,
                                width:
                                double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appcolors
                                            .greenishText
                                            .withOpacity(
                                            0.4),
                                        width: 1.5),
                                    borderRadius:
                                    BorderRadius
                                        .circular(
                                        10)),
                                child: Padding(
                                  padding:
                                  const EdgeInsets
                                      .only(
                                      left: 8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,
                                    children: [
                                      DropdownButtonHideUnderline(
                                        child:
                                        ButtonTheme(
                                          alignedDropdown:
                                          true,
                                          child: DropdownButton<
                                              String>(
                                              value:
                                              deopdownvalueForCity,
                                              onChanged:
                                                  (value) {
                                                setState(() {
                                                  deopdownvalueForCity  = value;
                                                });
                                              },
                                              items: items2.map(
                                                      (valueitem) {
                                                    return DropdownMenuItem(
                                                        value: valueitem,
                                                        child: Padding(
                                                          padding: const EdgeInsets
                                                              .only(top: 12),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Text(valueitem),
                                                          ),
                                                        ));
                                                  }).toList(),
                                              icon:
                                              const Padding(
                                                padding:
                                                EdgeInsets.only(left: 145),
                                                child:
                                                Icon(
                                                  Icons.expand_more,
                                                  color: appcolors.greenishText,
                                                ),
                                              )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 25, right: 25, top: 40),
                            child: Container(
                              height: 120,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1.5, color: appcolors.greenishText
                                  // Colors.black.withOpacity(0.2)
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 15, left: 15),
                                child: Row(
                                  children:  const [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Icon(
                                        Icons.report_problem,
                                        color: appcolors.greenishText,
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 10, top: 4, right: 8),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: AutoSizeText(
                                            "If you change the job language or country now, "
                                                "you may need to enter additional information "
                                                "before posting your job.",
                                            maxLines: 5,
                                            textAlign: TextAlign.justify,
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(color: Colors.black54,),
                          const ButtonForPopUp() ]
                        )
                    )
                )
            );
          }
          );
        });
  }
}
