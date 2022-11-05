// ignore_for_file: camel_case_types, depend_on_referenced_packages, non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:interns/Views/user_Profiles/user_Profile_Component/user_profiel_Reuseable_TextField.dart';
import '../../../../Authentication/Controller/User_Profile_Controller.dart';
import 'Skill_List_for_user_Profile.dart';
import '../../My_profile.dart';
import 'package:get/get.dart';
import '../ElevatedButton.dart';

class AddSkillTextField extends StatefulWidget {
  const AddSkillTextField({Key? key}) : super(key: key);
  @override
  State<AddSkillTextField> createState() => _AddSkillTextFieldState();
}
class _AddSkillTextFieldState extends State<AddSkillTextField> {
  TextEditingController skillController = TextEditingController();
  Userprofile profileObjSkill = Get.put(Userprofile());
  @override
  Widget build(BuildContext context) {
    List<dynamic> Skills =profileObjSkill .skills;
    return Obx(
      () => Column(children: [
        if (profileObjSkill.skills.isEmpty)
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(

                'add your skills.',style: TextStyle(fontSize: 16,color:Colors.black.withOpacity(0.4))
              ),
            ),
          )
        else
          SizedBox(
              height: 70,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25),
                  child:
                  ListView.builder(
                    shrinkWrap:true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Skills.length,
                    itemBuilder: (BuildContext context, int index) => Row(
                      children: [
                        Center(
                          child: SizedBox(
                              height: 42,
                              child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                    side: BorderSide(
                                      color: Colors.black
                                          .withOpacity(0.3), //<-- SEE HERE
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Center(
                                          child: Padding(
                                        padding: const EdgeInsets.only(
                                          left: 14,
                                        ),
                                        child: Text(
                                          Skills[index],
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: Colors.black54),
                                        ),
                                      )),
                                      InkWell(
                                        child:  const Padding(
                                          padding: EdgeInsets.only(
                                              right: 13, left: 6),
                                          child: SizedBox(
                                            height: 10,
                                            width: 10,
                                            child: FittedBox(
                                                fit: BoxFit.cover,
                                                child: ImageIcon(AssetImage("assets/images/icon.png"))),)
                                            // Icons.clear_outlined,
                                            // color: Colors.black54,
                                            // size: 16,

                                        ),
                                        onTap: () {
                                          Skills.removeAt(index);
                                        },
                                      ),
                                    ],
                                  ))),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        const SizedBox(
          height: 20,
        ),
        userProfileButton(
            text: 'Add Skill',

            onPressed: () {
              Get.to(const UserProfileSkills());
            })
      ]),
    );
  }
}
