// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../Authentication/Controller/home_Page_Controller.dart';
import 'package:get/get.dart';
import 'package:interns/Theme/app_Colors.dart';
import '../backen_json/brows_job_by_city.dart';
import 'HomePage.dart';

class HomePageRegionsTextField extends StatefulWidget {
  const HomePageRegionsTextField({Key? key}) : super(key: key);

  @override
  State<HomePageRegionsTextField> createState() =>
      _HomePageRegionsTextFieldState();
}

class _HomePageRegionsTextFieldState extends State<HomePageRegionsTextField> {
  TextEditingController placeNameController = TextEditingController();
  RegionandSkillController getregionVal = Get.put(RegionandSkillController());
  List cities = [];
  bool ForIcon = false;
  @override
  initState() {
    super.initState();
    for (int i = 0; i < jobs_by_city.length; i++) {
      cities.add(jobs_by_city[i]["city_name"]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.west,
              color: appcolors.greenishText,
            ),
          ),
          title: const Center(
            child: Text(
              "All Region",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Colors.black),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: TypeAheadFormField(
            onSuggestionSelected: (dynamic val) {
              setState(() {
                placeNameController.text = val;
                getregionVal.regions.value = val;
                // Get.back();
                Get.to(homePageView());
              });
            },
            itemBuilder: (context, dynamic item) {
              return ListTile(title: Text(item));
            },
            suggestionsCallback: (pattern) => cities.where((element) =>
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
                    ForIcon = false;
                  });
                } else {
                  setState(() {
                    ForIcon = true;
                  });
                }
                placeNameController.text = value;
                placeNameController.selection = TextSelection.fromPosition(
                    TextPosition(offset: placeNameController.text.length));
              },
              controller: placeNameController,
              decoration: InputDecoration(
                  suffixIcon: ForIcon
                      ? IconButton(
                          onPressed: () {
                            placeNameController.clear();
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
                  contentPadding: const EdgeInsets.only(left: 15, top: 15)),
            )));
  }
}
