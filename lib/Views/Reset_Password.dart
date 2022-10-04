import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children:  [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: GestureDetector(
                  child: const Icon(
                    Icons.close,
                    color: appcolors.greenishText,
                    size: 30,
                  ),
                  onTap: (){
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30,right: 20),
            child: Text(
              "Reset your password",
              style: TextStyle(fontSize: 25),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30,right:30),
            child: Text(
              "please enter your registerd email to reset your password. you will recieve a reset password link on your registered email.",
         textAlign: TextAlign.justify, ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 25,right: 24),
            child: TextFormField(
              decoration: const InputDecoration(labelText: "Email"),
            ),
          ),
          SizedBox(
            height: 65,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, top: 20, right: 40),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(appcolors.greenishText),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                child: const Text("Reset Password"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
