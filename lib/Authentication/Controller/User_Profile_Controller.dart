// ignore_for_file: depend_on_referenced_packages, prefer_typing_uninitialized_variables

import 'package:get/get.dart';

class Userprofile extends GetxController {
  RxList projectList =[].obs;
  String? summary = '';
  RxList skills = [].obs;
  String? education = '';
  String? project = '';
  RxList langauge = [].obs;
  String? workhistory = '';
  RxString projectTitle = ''.obs;
  RxString companyName = ''.obs;
  RxString projectUrl = ''.obs;
  RxString customerName = ''.obs;
  RxString customerUrl = ''.obs;
  RxString tools = ''.obs;
  RxString description = ''.obs;
  void summaryVal(val) {
    summary = val;
  }
  void educationVal(val) {
    education = val;
  }
  void workhistoryVal(val) {
    workhistory = val;
  }
}
