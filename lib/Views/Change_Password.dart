// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables, depend_on_referenced_packages, use_build_context_synchronously
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:interns/Authentication/Controller/Auth_Controller.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Theme/app_Colors.dart';

import '../Authentication/Controller/reset_Password_controller.dart';
import '../utils/loader.dart';
import '../utils/showMessage.dart';
// 6331c8055122e592a604a5f4

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController PasswordController = TextEditingController();
  Resetpassword getPassword = Get.put(Resetpassword());
  Authcontroller getId = Get.put(Authcontroller());
  var Id;
  void changePasswordForm() async {
    try {
      PopupLoader.show();
      var AuthResponse = await changePassword(
          getPassword.NewPassword,
          // '6331c8055122e592a604a5f4'
          '4546677676yh7676');
      PopupLoader.hide();
      if (AuthResponse['content']['status'] == 200) {
        Get.defaultDialog(
          middleText: 'Password change Successfully.',
          title: 'Successfully!',
          confirm: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: const Text(
              "Ok",
              style: TextStyle(fontSize: 18),
            ),
          ),
        );
      } else {
        ShowMessage().showErrorMessage(context, AuthResponse['content']['message']);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 70,
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 320),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 40),
              child: Text(
                "Change Your Password",
                style: TextStyle(fontSize: 20),
              ),
            ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextFormField(
                controller: PasswordController,
                decoration:
                    const InputDecoration(labelText: "Enter New password"),
                onChanged: (val) {
                  getPassword.setNewPassword(PasswordController.text);
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 40, top: 20, right: 40),
                child: ElevatedButton(
                  onPressed: () {
                    changePasswordForm();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: appcolors.greenishText,
                    shape:
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
