import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Simple_TextField_For_Edit_Profile.dart';

class FeedBack extends StatefulWidget {
  FeedBack({Key? key}) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(child: const Icon(Icons.west_outlined),
        onTap: (){
          Navigator.of(context).pop();
        },),
        backgroundColor: appcolors.greenishText,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 35),
              child: Text("Feedback"),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          children: [
            SimpleTextFormFiled(
              labelText: 'Name',
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child:  SimpleTextFormFiled(
                labelText: 'Email',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child:  SimpleTextFormFiled(
                labelText: 'Message',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: SizedBox(
                height: 65,
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.only(left: 19, top: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Send"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(appcolors.greenishText),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
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
