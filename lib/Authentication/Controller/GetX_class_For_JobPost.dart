// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, depend_on_referenced_packages, prefer_interpolation_to_compose_strings
import 'package:get/get.dart';
class JobPostController extends GetxController {
  var JobTitle;
  var JobLocation;
  var AddCompany;
  var AddDescription;
  var SetJobTypeValue;
  var SetWorkPlacValue;
  void JobTypeValue(set) {
    SetJobTypeValue = set;
    update();
  }

  void workPlaceTypeValue(set) {
    SetWorkPlacValue = set;
    update();
  }

  void jobLocationVal(var set) {
    JobLocation = set;
    update();
  }

  dynamic jobTitleVal(var set) {
    JobTitle = set;
    update();
  }

  void addCompanyVal(var set) {
    AddCompany = set;
    update();
  }

  void addDescriptionVal(var set) {
    AddDescription = set;
    update();
  }
}
