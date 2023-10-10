// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages, file_names, camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:interns/Authentication/Controller/User_Profile_Controller.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Authentication/View/signUpView.dart';
import 'package:get/get.dart';
import 'package:interns/Views/Account_Settings.dart';
import 'package:interns/Views/Reset_Password.dart';
import '../../Views/HomePage.dart';
import '../../utils/loader.dart';
import '../../utils/showMessage.dart';
import '../Components/textformfield.dart';
import '../Controller/Auth_Controller.dart';

class signInView extends StatefulWidget {
  const signInView({Key? key}) : super(key: key);
  @override
  State<signInView> createState() => _signInViewState();
}

class _signInViewState extends State<signInView> {
  final _formKey = GlobalKey<FormState>();
  Authcontroller controller1 = Get.put(Authcontroller());
  void _LoginForm() async {
    FocusScope.of(context).unfocus();
    try {
      PopupLoader.show();
      var authResponse = await login(
        controller1.Email,
        controller1.Password,
      );
      PopupLoader.hide();
      print(authResponse['content']);

      if (authResponse['content']['status'] == 200) {
        ShowMessage().showMessage(context, 'Successfully Login');
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const homePageView()));
      } else {
        ShowMessage().showErrorMessage(context, 'Some Error');
        print("message");
      }
    } catch (e) {
      PopupLoader.hide();
      print(['SubmitLogin Exception:', e.toString()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 30,
                        color: appcolors.greenishText,
                      )),
                  GestureDetector(
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 18, color: appcolors.greenishText),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpView()));
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Sign In",
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Please login to your account to continue",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  textformfeild(
                      fieldHint: "Email",
                      isObscureText: false,
                      boolTitleShowHide: false,
                      returnDatacall: (val) {
                        setState(() {
                          controller1.Email = val;
                        });
                      }),
                  textformfeild(
                      fieldHint: "Password",
                      isObscureText: true,
                      boolTitleShowHide: true,
                      returnDatacall: (val) {
                        setState(() {
                          controller1.Password = val;
                        });
                      }),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 30, right: 20),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Get.to(const ResetPassword());
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: appcolors.greenishText,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 55,
              width: 350,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _LoginForm();
                  }
                },
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(appcolors.greenishText),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ))),
                child: const Text(
                  "Sign In",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'or',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black38,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Sign in with',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.indigo,
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "G",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.lightBlueAccent),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.lightBlueAccent,
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "f",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepOrange),
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.deepOrange,
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        "In",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
