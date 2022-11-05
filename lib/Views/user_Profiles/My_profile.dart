// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages, file_names
import 'package:flutter/material.dart';
import 'package:interns/Authentication/Controller/User_Profile_Controller.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Views/user_Profiles/Edit%20_My_Profile.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:get/get.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/components_TextFields/Add_Project.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/components_TextFields/Add_education.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/components_TextFields/Add_language.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/components_TextFields/Add_skill.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/components_TextFields/Add_summary.dart';
import 'package:interns/utils/showMessage.dart';
import '../../Authentication/Controller/Auth_Controller.dart';
import '../../Authentication/Controller/home_Page_Controller.dart';
import '../../Authentication/Controller/user_FeedBack_Controller.dart';
import '../../utils/loader.dart';
import '../Responsive.dart';
import 'my_Profile_Container.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);
  @override
  State<MyProfile> createState() => _MyProfileState();
}
Userprofile skillController =  Get.put(Userprofile());
Userprofile profileObj = Get.put(Userprofile());
AuthController getName = Get.put(AuthController());
RegionandSkillController getregionVal  = Get.put(RegionandSkillController());
UserFeedback getFeedbackData = UserFeedback();




int? _result;
var no = "No";
var yes = "Yes";
void displayDialogue(){
  Get.defaultDialog(
    middleText: 'Your Profile is saved successfully.',
       title: "Profile!",
    confirmTextColor: Colors.white,
    confirm: GestureDetector(onTap: (){
      Get.back();
    }, child: const Text("Ok",style: TextStyle(fontSize: 18),),),
  );
}
class _MyProfileState extends State<MyProfile> {
  void userProfileForm() async {
     var  summaryV= profileObj.summary;
    var  skillV= profileObj.skills;
    var  educationV= profileObj.education;
    var  workhistoryV= profileObj.workhistory;
    var  projectV= profileObj.project;
    var  languageV= profileObj.langauge;
    List allobjects=[summaryV,skillV,educationV,workhistoryV,projectV,languageV];
     bool isDataMissing = false;
     for(int i=0; i<allobjects.length; i++){
       if(allobjects[i].isEmpty){
        setState((){
          isDataMissing=true;
        }) ;
       }
     }
    if(!isDataMissing){
      PopupLoader.show();
      try {
        var authResponse = await userProfile(
            '${profileObj.summary}',
            '${profileObj.skills}',
            '${profileObj.education}',
            '${profileObj.workhistory}',
            '${profileObj.project}',
            '${profileObj.langauge}');
        PopupLoader.hide();
        if (authResponse['content']['status'] ==200){
          displayDialogue();

        } else {
          ShowMessage().showErrorMessage(context, 'Some errors');

        }
      } catch (e) {
        print(['SubmitLogin Exception:', e.toString()]);
      }
    }
    else{

       Get.defaultDialog(
         // contentPadding:EdgeInsets.zero ,
         middleText: 'Data is missing.',
         title: 'Missing!',
        confirm: GestureDetector(onTap: (){
           Get.back();
         }, child: const Text("Ok",style: TextStyle(fontSize: 18),),),
       );
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Responsive(body(),body()));
    }
Widget body(){
    return
      Column(
          children: [
            Container(
                color: appcolors.greenishText,
                height: 140,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: appcolors.greenishText),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/profileimage.jpg'),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          ),
                          const SizedBox(width:20),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children:  [
                              Text(
                                // "Usman Ali ",
                                getName.name.value,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20),
                              ),
                              const Text(
                                "Flutter Developer",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                              const Text(
                                "Lahore, Pakistan",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                       Align(
                          alignment: Alignment.bottomRight,
                          child: IconButton(icon: const Icon(Icons.edit,color: Colors.white,
                              size:25
                          ),onPressed: (){
                            Get.to(const EditMyProfile());
                          },))
                    ],
                  ),
                )),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            child: Column(
              children: [
                UserProfileContainer(
                  CenterText: 'Summary',
                ),
                const SizedBox(
                  height: 10,
                ),
                const AddSummaryTextField(),
                const SizedBox(
                  height: 25,
                ),
                UserProfileContainer(
                  CenterText: 'Skills',
                ),
                const AddSkillTextField(),
                const SizedBox(
  height: 25,
),
                UserProfileContainer(
                  CenterText: 'Education',
                ),
                // const SizedBox(
                //   height: 10,
                // ),
                const AddEducationTextField(),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: UserProfileContainer(
                    CenterText: 'Work History',
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 30),
                    child: Text(
                      "Do you have a work experience?",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30,top: 10),
                  child: Row(
                    children: [
                      Radio(
                          fillColor: MaterialStateColor.resolveWith(
                              (states) => appcolors.greenishText),
                          value: 1,
                          groupValue: _result,
                          onChanged: (value) {
                            setState(() {
                              _result = value as int?;
                              profileObj.workhistoryVal(yes);
                            });
                          }),
                      const Text(
                          "Yes",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),

                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => appcolors.greenishText),
                            value: 2,
                            groupValue: _result,
                            onChanged: (value) {
                              setState(() {
                                _result = value as int;
                                profileObj.workhistoryVal(no);
                              });
                            }),
                      ),
                      const Text(
                        "No",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                   profileObj.workhistory =="Yes"?
                   Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: UserProfileContainer(
                        CenterText: 'Projects',
                      ),
                    ),
                const AddProjectTextField()
        ]):Container(),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: UserProfileContainer(
                    CenterText: 'Languages',
                  ),
                ),
                const AddLanguageTextField(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, bottom: 20,top: 5),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(appcolors.greenishText),
                      ),
                      onPressed: () {
                      // userProfileForm();
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]);

  }
}
