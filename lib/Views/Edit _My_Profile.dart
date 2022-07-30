import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Simple_TextField_For_Edit_Profile.dart';

class EditMyProfile extends StatefulWidget {
  const EditMyProfile({Key? key}) : super(key: key);

  @override
  State<EditMyProfile> createState() => _EditMyProfileState();
}

class _EditMyProfileState extends State<EditMyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appcolors.greenishText,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 26,
                )),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "Edit My Profile",
                    textAlign: TextAlign.justify,
                  ),
                ),
                Text(
                  "DONE",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 16
                  ),
                )
              ],
            )),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SimpleTextFormFiled(
                  labelText: 'First Name',
                ),
                const SizedBox(
                  height: 20,
                ),
                SimpleTextFormFiled(
                  labelText: 'Last Name',
                ),
                const SizedBox(
                  height: 20,
                ),
                SimpleTextFormFiled(
                  labelText: 'Date of birth',
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // SimpleTextFormFiled(
                //   labelText: 'Single',
                // ),
                const SizedBox(
                  height: 15,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Gender")),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(top: 10),
                              child: Icon(
                                  Icons.radio_button_off,
                                  color: appcolors.greenishText),
                            ),

                            const Padding(
                              padding: EdgeInsets.only(top: 10, left: 5),
                              child: Text("Male"),
                            ),
                          ]),
                      Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.radio_button_checked,
                                  color: appcolors.greenishText,
                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10, left: 5),
                            child: Text("Female"),
                          )
                        ],
                      ),
                    ]),
                const SizedBox(
                  height: 20,
                ),
                SimpleTextFormFiled(
                  labelText: 'Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                SimpleTextFormFiled(
                  labelText: 'Mobile',
                ),
                const SizedBox(
                  height: 20,
                ),
                SimpleTextFormFiled(
                  labelText: 'Home Contact #',
                ),
                const SizedBox(
                  height: 20,
                ),
                SimpleTextFormFiled(
                  labelText: 'Adress Line 1 ',
                ),
                const SizedBox(
                  height: 20,
                ),
                SimpleTextFormFiled(
                  labelText: 'Adress Line 2',
                ),
              ],
            ),
          ),
        ));
  }
}
