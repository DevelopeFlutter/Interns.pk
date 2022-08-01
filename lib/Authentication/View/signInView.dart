import 'package:flutter/material.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Authentication/View/signUpView.dart';
import 'package:get/get.dart';
import '../../Views/HomePage.dart';
import '../../utils/loader.dart';
import '../../utils/showMessage.dart';
import '../Components/textformfield.dart';
import '../Controller/Auth_Controller.dart';

class signInView extends StatefulWidget {
  signInView({Key? key}) : super(key: key);
  @override
  State<signInView> createState() => _signInViewState();
}
class _signInViewState extends State<signInView> {
  @override
  final _formKey = GlobalKey<FormState>();
    Authcontroller controller1 = Get.put(Authcontroller());
  void _LoginForm()async{
    FocusScope.of(context).unfocus();
    try{
      PopupLoader.show();
      var authResponse = await Login(
          controller1.Email.value,
          controller1.Password.value,
      );
      PopupLoader.hide();
      print(authResponse['content']);

      if(authResponse["content"]['status'] == 200){
        ShowMessage().showMessage(context, 'Successfully Login');
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const homePageView()));
      }else{
        ShowMessage().showErrorMessage(context, 'Some Error');
        print("message");
      }
    }catch(e){
      PopupLoader.hide();
      print(['SubmitLogin Exception:', e.toString()]);
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
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
                    style:
                        TextStyle(fontSize: 18, color: appcolors.greenishText),
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
                    isObscureText : false,
                    boolTitleShowHide: false,
                    returnDatacall: (val) {
                      setState(() {
                        controller1.Email.value = val;
                      });
                    }),

            textformfeild(
                fieldHint: "Password",
                // fieldicon: Icons.lock_outline,
                isObscureText: true,
                boolTitleShowHide: true,
                returnDatacall: (val) {
                  setState(() {
                    controller1.Password.value = val;
                  });
                }),
              ],
            ),
          ),
          // const Padding(
          //   padding: EdgeInsets.only(left: 12, right: 12),
          //   child: TextField(
          //     decoration: InputDecoration(
          //         enabledBorder: UnderlineInputBorder(
          //             borderSide: BorderSide(color: Colors.black87, width: 2)),
          //         labelText: 'Email',
          //         labelStyle: TextStyle(color: Colors.black87, fontSize: 18)),
          //   ),
          // ),
          // const SizedBox(
          //   height: 25,
          // ),
          // const Padding(
          //   padding: EdgeInsets.only(left: 12, right: 12),
          //   child: TextField(
          //     decoration: InputDecoration(
          //         enabledBorder: UnderlineInputBorder(
          //             borderSide: BorderSide(color: Colors.black87, width: 2)),
          //         labelText: 'Password',
          //         labelStyle: TextStyle(color: Colors.black87, fontSize: 18)),
          //   ),
          // ),
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 30, right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  color: appcolors.greenishText,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 55,
            width: 350,
            child: ElevatedButton(
              onPressed: () {
                if(_formKey.currentState!.validate()){
                  _LoginForm();
                }
              },
              child: const Text(
                "Sign In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(appcolors.greenishText),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ))),
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
    );
  }
}
