// ignore_for_file: depend_on_referenced_packages, unrelated_type_equality_checks
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:interns/Authentication/Controller/user_FeedBack_Controller.dart';
import 'package:interns/Theme/app_Colors.dart';
import '../Services/Auth_Services/signUp.dart';
import 'package:form_field_validator/form_field_validator.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);
  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  UserFeedback getFeedbackData = UserFeedback();
  final formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController messageController = TextEditingController();
void validateUserFeedback() async{
if(formkey.currentState!.validate()){
  var authResponse = await userFeedBack(
              getFeedbackData.Name.toString(), getFeedbackData.Email.toString(),
              getFeedbackData.Message.toString());
          if (authResponse['content']['status'] == 200) {
            Get.defaultDialog(
              middleText: 'Thanks for your feedback',
              title: 'Submission Successful',
              confirm: GestureDetector(onTap: (){
                Get.back();
              }, child: const Text("Ok",style: TextStyle(fontSize: 18),),),
            );
          }
          else  {
            print('${authResponse['content']['errorMessage']}');

          }
        }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: GestureDetector(
          child: const Icon(Icons.west_outlined),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
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
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (val) {
                  getFeedbackData.Namevalue(nameController.text);
                },
                validator: MultiValidator([
                  RequiredValidator(errorText: "Required*"),

                ]),
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Name',
                ),
              ),
              Padding(
                padding:  const EdgeInsets.only(top: 20),
                child: TextFormField(
                  onChanged:(val){
                    getFeedbackData.Emailvalue(emailController.text);
                  },
                  controller: emailController,
                    validator: MultiValidator([
                      EmailValidator(errorText: 'Email address is not valid'),
                      RequiredValidator(errorText: "Required*")

                    ]),
                  decoration: const InputDecoration(labelText: "Email"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextFormField(
                  onChanged: (val) {
                    getFeedbackData.Messagevalue(messageController.text);
                  },
                  validator: MultiValidator([
                    RequiredValidator(errorText: "Required*"),
                  ]),
                  controller: messageController,
                  decoration: const InputDecoration(labelText: 'Message'),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: (){
                    validateUserFeedback();
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(appcolors.greenishText),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Send",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
