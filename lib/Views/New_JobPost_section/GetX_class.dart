import 'package:get/get.dart';
class JobPostController extends GetxController{
  var SelectButton ;
  var JobTitle;
  var JobLocation;
  var AddCompany;
  var AddDescription;
  var SetJobTypeValue;
  var SetWorkPlacValue;
void JobTypeValue( set){
SetJobTypeValue = set;
update();
print('$SetJobTypeValue This is the JobType Value');
}
void WorkPlaceTypeValue(set){
  SetWorkPlacValue = set;
  print('$SetWorkPlacValue This is the WorkPlaceValue');
}
  void JobLocationVal(var set) {
    JobLocation = set;
    print("Location:"+JobLocation);
  }
  void  JobTitleVal(var set) {
    JobTitle = set;
    print("job title:"+JobTitle);
  }
  void  AddCompanyVal (var set ) {
    AddCompany = set;
    print("companyName:"+AddCompany);
  }
  void  AddDescriptionVal(var set ) {
    AddDescription = set;
    print("Description:"+AddDescription);
  }
 }

