// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:interns/Authentication/Controller/User_Profile_Controller.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Views/user_Profile/Edit%20_My_Profile.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:get/get.dart';
import 'package:interns/utils/showMessage.dart';
import '../../Authentication/Controller/Auth_Controller.dart';
import '../../utils/loader.dart';
import '../Responsive.dart';
import 'my_Profile_Container.dart';
class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);
  @override
  State<MyProfile> createState() => _MyProfileState();
}
Userprofile profileObj = Get.put(Userprofile());
AuthController getName = Get.put(AuthController());
int? _result;
var no = "No";
var yes = "Yes";
bool summaryfocused = false;
bool skillfocused = false;
bool educationfocused = false;
bool projectfocused = false;
bool languagefocused = false;
FocusNode nodeOne = FocusNode();
FocusNode nodeTwo = FocusNode();
FocusNode nodeThree = FocusNode();
FocusNode nodeFour = FocusNode();
FocusNode nodeFive = FocusNode();
bool falseTextField = false;
var summaryVar = profileObj.summary;
var skillVar = profileObj.skill;
var educationVar = profileObj.education;
var projectVar = profileObj.project;
var languageVar = profileObj.langauge;
TextEditingController summary = TextEditingController();
TextEditingController skill = TextEditingController();
TextEditingController education = TextEditingController();
TextEditingController projects = TextEditingController();
TextEditingController language = TextEditingController();
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
    var  skillV= profileObj.skill;
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
            '${profileObj.skill}',
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

  void summaryfocus() {
    FocusScope.of(context).requestFocus(nodeOne);
    summaryfocused = true;
  }
  void skillfocus() {
    FocusScope.of(context).requestFocus(nodeTwo);
    skillfocused = true;
  }
  void educationfocus() {
    FocusScope.of(context).requestFocus(nodeThree);
    educationfocused = true;
  }

  void projectfocus() {
    FocusScope.of(context).requestFocus(nodeFour);
    projectfocused = true;
  }

  void languagefocus() {
    FocusScope.of(context).requestFocus(nodeFive);
    languagefocused = true;
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:
        Responsive(body(),body()));
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
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: UserProfileContainer(
                    CenterText: 'Summary',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
                  child: TextField(
                    //= readOnly:falseTextField?false:true,
                    autofocus: summaryfocused,
                    onSubmitted: (ter) {
                      nodeOne.unfocus();
                      summaryfocused = false;
                      // assets/images/profileimage.jpg
                    },
                    // autofocus:focused1?true:false,
                    enabled: summaryfocused ? true : false,
                    focusNode: summaryfocused ? nodeOne : null,
                    controller: summary,
                    onChanged: (value) {
                      setState(() {
                        summaryVar = value;
                        profileObj.summaryVal(summary.text);
                      });
                    },
                    // enableInteractiveSelection: true,
                    decoration: InputDecoration(
                        border: summaryfocused ? null : InputBorder.none,
                        hintText:
                            "Adding a summary is a quick and easy way to highlight your experience and interests.",
                        hintMaxLines: 3),
                    style: const TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.9),
                          side: const BorderSide(
                              color: appcolors.greenishText, width: 1.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        onPressed: () {
                          if (summaryfocused) {
                            nodeOne.unfocus();
                            summaryfocused = false;
                          } else {
                            summaryfocus();
                          }
                        },
                        child: Text(
                            summaryfocused
                                ? 'Save'
                                : summaryVar == ''
                                    ? 'Add Summary'
                                    : 'Edit',
                            style: const TextStyle(
                                fontSize: 18, color: appcolors.greenishText))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: UserProfileContainer(
                    CenterText: 'Skills',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
                  child: TextField(
// readOnly:falseTextField?false:true,
                    autofocus: skillfocused,
                    onSubmitted: (ter) {
                      nodeTwo.unfocus();
                      skillfocused = false;
                    },
// autofocus:focused1?true:false,
                    enabled: skillfocused ? true : false,
                    focusNode: skillfocused ? nodeTwo : null,
                    controller: skill,
                    onChanged: (value) {
                      setState(() {
                        skillVar = value;
                        profileObj.skillsVal(skill.text);
                      });
                    },
// enableInteractiveSelection: true,
                    decoration: InputDecoration(
                        border: skillfocused ? null : InputBorder.none,
                        hintText: "Add your skill if any.",
                        hintMaxLines: 3),
                    style: const TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.9),
                          side: const BorderSide(
                              color: appcolors.greenishText, width: 1.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        onPressed: () {
                          if (skillfocused) {
                            nodeTwo.unfocus();
                            skillfocused = false;
                          } else {
                            skillfocus();
                          }
                        },
                        child: Text(
                            skillfocused
                                ? 'Save'
                                : skillVar == ''
                                    ? 'Add Skill'
                                    : 'Edit',
                            style: const TextStyle(
                                fontSize: 18, color: appcolors.greenishText))),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: UserProfileContainer(
                    CenterText: 'Education',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
                  child: TextField(
// readOnly:falseTextField?false:true,
                    autofocus: educationfocused,
                    onSubmitted: (ter) {
                      nodeThree.unfocus();
                      educationfocused = false;
                    },
// autofocus:focused1?true:false,
                    enabled: educationfocused ? true : false,
                    focusNode: educationfocused ? nodeThree : null,
                    controller: education,
                    onChanged: (value) {
                      setState(() {
                        educationVar = value;
                        profileObj.educationVal(education.text);
                      });
                    },
// enableInteractiveSelection: true,
                    decoration: InputDecoration(
                        border: educationfocused ? null : InputBorder.none,
                        hintText: "What kind of education you have?",
                        hintMaxLines: 3),
                    style: const TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.9),
                          side: const BorderSide(
                              color: appcolors.greenishText, width: 1.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        onPressed: () {
                          if (educationfocused) {
                            nodeThree.unfocus();
                            educationfocused = false;
                          } else {
                            educationfocus();
                          }
                        },
                        child: Text(
                            educationfocused
                                ? 'Save'
                                : educationVar== ''
                                    ? 'Add education'
                                    : 'Edit',
                            style: const TextStyle(
                                fontSize: 18, color: appcolors.greenishText))),
                  ),
                ),
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
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
                  child: TextField(
// readOnly:falseTextField?false:true,
                    autofocus: projectfocused,
                    onSubmitted: (ter) {
                      nodeFour.unfocus();
                      projectfocused = false;
                    },
// autofocus:focused1?true:false,
                    enabled: projectfocused ? true : false,
                    focusNode: projectfocused ? nodeFour : null,
                    controller: projects,
                    onChanged: (value) {
                      setState(() {
                        projectVar = value;
                        profileObj.projectsVal(projects.text);
                      });
                    },
// enableInteractiveSelection: true,
                    decoration: InputDecoration(
                        border: projectfocused ? null : InputBorder.none,
                        hintText: "What kind of education you have?",
                        hintMaxLines: 3),
                    style: const TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.9),
                          side: const BorderSide(
                              color: appcolors.greenishText, width: 1.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        onPressed: () {
                          if (projectfocused) {
                            nodeFour.unfocus();
                            projectfocused = false;
                          } else {
                            projectfocus();
                          }
                        },
                        child: Text(
                            projectfocused
                                ? 'Save'
                                : projectVar == ''
                                    ? 'Add project'
                                    : 'Edit',
                            style: const TextStyle(
                                fontSize: 18, color: appcolors.greenishText))),
                  ),
                ),
        ],):Container(),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: UserProfileContainer(
                    CenterText: 'Languages',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 10, top: 10),
                  child: TextField(
// readOnly:falseTextField?false:true,
                    autofocus: languagefocused,
                    onSubmitted: (ter) {
                      nodeFive.unfocus();
                      languagefocused = false;
                    },
// autofocus:focused1?true:false,
                    enabled: languagefocused ? true : false,
                    focusNode: languagefocused ? nodeFive : null,
                    controller: language,
                    onChanged: (value) {
                      setState(() {
                        languageVar = value;
                        profileObj.languageVal(language.text);
                      });
                    },
// enableInteractiveSelection: true,
                    decoration: InputDecoration(
                        border: languagefocused ? null : InputBorder.none,
                        hintText: "What kind of education you have?",
                        hintMaxLines: 3),
                    style: const TextStyle(color: Colors.black87, fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white.withOpacity(0.9),
                          side: const BorderSide(
                              color: appcolors.greenishText, width: 1.7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                        onPressed: () {
                          if (languagefocused) {
                            nodeFive.unfocus();
                            languagefocused = false;
                          } else {
                            languagefocus();
                          }
                        },
                        child: Text(
                            languagefocused
                                ? 'Save'
                                : languageVar == ''
                                    ? 'Add language'
                                    : 'Edit',
                            style: const TextStyle(
                                fontSize: 18, color: appcolors.greenishText))),
                  ),
                ),

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
                      userProfileForm();
                      //   getData();
                      //   displayDialogue();
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
