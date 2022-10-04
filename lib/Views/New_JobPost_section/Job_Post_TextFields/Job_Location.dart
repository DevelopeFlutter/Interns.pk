import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
// ignore: depend_on_referenced_packages
import 'package:get/get.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_typeahead/flutter_typeahead.dart';
import '../../../Authentication/Controller/GetX_class_For_JobPost.dart';

// ignore: camel_case_types
class JobPost_Location extends StatefulWidget {
  const JobPost_Location({Key? key}) : super(key: key);

  @override
  State<JobPost_Location> createState() => _JobPost_LocationState();
}

// ignore: camel_case_types
class _JobPost_LocationState extends State<JobPost_Location> {
  static const jobLocationList = ['Lahore', 'Karachi', 'Multan', 'Pattoki'];
  TextEditingController jobLocationController = TextEditingController();
  JobPostController jobLocationcontroller = Get.put(JobPostController());

  bool forIcon = false;
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
            const Padding(
              padding: EdgeInsets.only(left: 12, top: 12),
              child: Text(
                "This job will be shown to job seekers searching for on-site jobs in this location.",
                style: TextStyle(color: Colors.black54, fontSize: 15),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TypeAheadFormField(
              onSuggestionSelected: (String val) {
                setState(() {
                  jobLocationController.text = val;
                  jobLocationcontroller
                      .jobLocationVal(jobLocationController.text);
                });
              },
              itemBuilder: (context, String item) {
                return ListTile(title: Text(item));
              },
              suggestionsCallback: (pattern) => jobLocationList.where(
                  (element) =>
                      element.toLowerCase().contains(pattern.toLowerCase())),
              hideSuggestionsOnKeyboardHide: true,
              noItemsFoundBuilder: (context) => const Padding(
                padding: EdgeInsets.only(
                  left: 8,
                ),
                child: Text("No item Found"),
              ),
              textFieldConfiguration: TextFieldConfiguration(
                autofocus: true,
                onChanged: (value) {
                  if (value.isEmpty) {
                    setState(() {
                      forIcon = false;
                    });
                  } else {
                    setState(() {
                      forIcon = true;
                    });
                  }
                  jobLocationController.text = value;
                  jobLocationController.selection = TextSelection.fromPosition(
                      TextPosition(offset: jobLocationController.text.length));
                  jobLocationcontroller
                      .jobLocationVal(jobLocationController.text);
                },
                controller: jobLocationController,
                decoration: InputDecoration(
                    suffixIcon: forIcon
                        ? Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: IconButton(
                                onPressed: () {
                                  jobLocationController.clear();
                                  setState(() {
                                    forIcon = false;
                                  });
                                },
                                icon: const Icon(
                                  Icons.close,
                                  color: appcolors.greenishText,
                                )),
                          )
                        : null,
                    hintText: "Search...",
                    contentPadding: const EdgeInsets.only(left: 15)),
              ),
            )
          ],
        ));
  }
}
