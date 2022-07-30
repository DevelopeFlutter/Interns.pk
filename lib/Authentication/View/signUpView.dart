import 'package:flutter/material.dart';
import 'package:interns/Authentication/Components/textformfield.dart';
import 'package:interns/Authentication/Controller/Auth_Controller.dart';
import 'package:interns/Views/HomePage.dart';
import 'package:interns/utils/loader.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Authentication/View/signInView.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';
import 'package:interns/utils/showMessage.dart';
class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);
  @override
  State<SignUpView> createState() => _SignUpViewState();
}
class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();
  AuthController controller = Get.put(AuthController());
  void _submitForm()async{
    FocusScope.of(context).unfocus();

    try{
      PopupLoader.show();
      var authResponse = await signup(
        controller.name.value,
        controller.email.value,
        controller.password.value,
        controller.confirmPassword.value
      );
      PopupLoader.hide();

      print(authResponse["content"]);
      if(authResponse["content"]["status"] == 200 ){
        ShowMessage().showMessage(context, 'Successfully SignUp');
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => homePageView()));
      }else{
        ShowMessage().showErrorMessage(context, authResponse["message"]);
        print("message");
      }
    }catch(e){
      PopupLoader.hide();
      ShowMessage().showErrorMessage(context, "something went wrong");

      print(['SubmitLogin Exception:', e.toString()]);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        const SizedBox(
          height: 60,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text(
            'Sign Up',
            style: TextStyle(fontSize: 24),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Please create an account to continue',
            style: TextStyle(
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
                   fieldHint: "Name",
                   // fieldicon: Icons.person_outline,
                   isObscureText: false,
                   boolTitleShowHide: true,
                   returnDatacall: (val) {
                     setState(() {
                       controller.name.value = val;
                     });
                   }),
               textformfeild(
                   fieldHint: "Email",
                   isObscureText: false,
                   boolTitleShowHide: false,
                   returnDatacall: (val) {
                     setState(() {
                       controller.email.value = val;
                     });
                   }),
               textformfeild(
                   fieldHint: "Password",
                   // fieldicon: Icons.lock_outline,
                   isObscureText: true,
                   boolTitleShowHide: true,
                   returnDatacall: (val) {
                     setState(() {
                       controller.password.value = val;
                     });
                   }),
               textformfeild(
                   fieldHint: "ConfirmPassword",
                   isObscureText: true,
                   boolTitleShowHide: true,
                   returnDatacall: (val) {
                     setState(() {
                       controller.confirmPassword.value = val;
                     });
                   }),
             ],
           ),
         ),

        SizedBox(
          height: 55,
          width: 350,
          child: ElevatedButton(
            onPressed: () {
              if(_formKey.currentState!.validate()){
                _submitForm();
              }

            },
            child: const Text(
              "Create Account",
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
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 70),
              child: Text(
                'Already have an account?',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
            Column(
              children: [
                GestureDetector(
                  child: const Text(
                    'Sign in',
                    style: TextStyle(
                      color: appcolors.greenishText,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signInView()));
                  },
                ),
              ],
            )
          ],
        )
      ]),
    );
  }

}
