// ignore_for_file: non_constant_identifier_names, camel_case_types, depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:get/get.dart' ;
import 'package:interns/Views/New_JobPost_section/Job_Post.dart';
import '../../../Authentication/Controller/GetX_class_For_JobPost.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
class Add_Company extends StatefulWidget {
  const Add_Company({Key? key}) : super(key: key);
  @override
  State<Add_Company> createState() => _Add_CompanyState();
}
class _Add_CompanyState extends State<Add_Company> {
  TextEditingController CompanyController = TextEditingController();
  JobPostController getCompanyData = Get.put(JobPostController());
  JobPost jobPostObj = const JobPost();
  bool ForIcon = false;
  static const  companyList = ['Syntaxroot','PureLogic','SoftTech','MatureSoftware',];
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
        body: TypeAheadFormField(
            onSuggestionSelected: (String val) {
    setState(() {
    CompanyController.text =val;
    getCompanyData.addCompanyVal(val);


    });
    },
    itemBuilder: (context, String item) {
    return ListTile(title: Text(item));
    },
    suggestionsCallback: (pattern) => companyList.where((element) =>
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
            CompanyController.text = value;
            CompanyController.selection = TextSelection.fromPosition(
                TextPosition(offset:CompanyController.text.length));
            setState(() {
              getCompanyData.addCompanyVal(CompanyController.text);


            });
          },
          controller: CompanyController,

          decoration: InputDecoration(
            suffixIcon: ForIcon ?IconButton(onPressed: (){
              CompanyController.clear();
              setState(() {
                ForIcon = false;
              });
            }, icon: const Icon(Icons.close,color: appcolors.greenishText,)):null,
            hintText:  "Search...",contentPadding: const EdgeInsets.only(left: 15,top: 15)

          ),
    )));
  }
}
