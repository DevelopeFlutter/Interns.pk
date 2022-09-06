import 'package:get/get.dart';
class  Userprofile extends GetxController{
  String?  summary ='';
  String?  skill = '';
  String?  education = '';
  String?  project  =  '';
  String?  langauge = '';
  String? workhistory = '';
  void summaryVal(val){
    summary = val;
    print('$summary This is the UserProfileController');
  }
  void skillsVal(val){
    skill = val;
  }
  void educationVal(val){
    education = val;
  }
  void projectsVal(val){
    project = val;
  }
  void languageVal(val){
    langauge = val;

  }
  void workhistoryVal (val){
    workhistory =val;
    print(workhistory);

  }
}