// ignore_for_file: camel_case_types, depend_on_referenced_packages, unrelated_type_equality_checks, non_constant_identifier_names
import 'package:flutter/material.dart';

import '../../../../Authentication/Controller/User_Profile_Controller.dart';
import 'package:get/get.dart';
import '../ElevatedButton.dart';
import 'Language_List_for_user_Profile.dart';
class AddLanguageTextField extends StatefulWidget {
  const AddLanguageTextField({Key? key}) : super(key: key);
  @override
  State<AddLanguageTextField> createState() => _AddLanguageTextFieldState();
}
class _AddLanguageTextFieldState extends State<AddLanguageTextField> {
  TextEditingController TextController = TextEditingController();
  Userprofile profileObjLangauge = Get.put(Userprofile());
  @override
  Widget build(BuildContext context) {
    var Langauges =  profileObjLangauge.langauge;
    return  Obx( ()=> Column(
      children: [
    if(profileObjLangauge.langauge.isEmpty)
        const Padding(
        padding: EdgeInsets.only(left: 30),
    child: TextField(
    readOnly: true,
    decoration: InputDecoration(
    hintText: 'Add your langauge.',
    border: InputBorder.none,
    hintStyle: TextStyle(color: Colors.black38)),
    ),
    )
    else
            SizedBox(
              height: 70,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 25),
                  child: ListView.builder(
                    shrinkWrap:true,
                    scrollDirection: Axis.horizontal,
                    itemCount: Langauges.length,
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
                                              Langauges[index],
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
                                          Langauges.removeAt(index);
                                        },
                                      ),
                                    ],
                                  ))),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            userProfileButton(text:
                'Add Language', onPressed: (){
             Get.to(const UserProfileLanguageList());
            })
          ] ),
    );
  }
}
