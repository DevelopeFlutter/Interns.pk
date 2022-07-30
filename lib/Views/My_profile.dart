import 'package:flutter/material.dart';
import 'package:interns/Views/Edit%20_My_Profile.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/OutlinedBorder_TextField.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);
  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(fit: StackFit.loose, clipBehavior: Clip.none, children: [
          Container(
            height: 170,
            color: appcolors.greenishText,
            width: double.infinity,),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Flutter Developer ",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 3.0, right: 80),
                  child: Text(
                    "Fresh",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0, right: 30),
                  child: Text(
                    " Shahzaib Ali",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0, right: 10),
                  child: Text(
                    "Lahore, Pakistan",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditMyProfile()));
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: appcolors.greenishText
                  ),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/profileimage.jpg'),
                      fit: BoxFit.fill
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.only(top: 35, left: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  const [
               Icon(Icons.share,color: Colors.black54,),
               Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text(
                  "Share Profile",
                  style: TextStyle(
                    color: appcolors.greenishText
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 2),
                child: Text("|"),
              ),
              Icon(Icons.download,color: Colors.black54,),
              Text(
                "Download",
                style: TextStyle(
                  color: appcolors.greenishText
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ConTainer(
                   CenterText: 'Summary',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 10, top: 30),
                  child: Text(
                      "Adding a summary is a quick and easy way to highlight your experience and interests.",
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16
                  ),),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child:OutlinedTextField(HintText: 'Add Summary',)
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ConTainer(
                   CenterText: 'Skills',
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20,  top: 30),
                    child: Text(
                        "What kind of Skills do you have?",
                    style: TextStyle(
                      fontSize: 16
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
                  child: OutlinedTextField(HintText: 'Add Skills',)
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ConTainer(
                   CenterText: 'Education',
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20,  top: 30),
                    child: Text(
                        "What's your educational background?",
                    style: TextStyle(
                     fontSize: 16
                    ),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
                  child: OutlinedTextField(HintText: 'Add Education',)

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ConTainer(
                  CenterText: 'Work History',
                  ),
                ),
                 const Align(
                   alignment: Alignment.centerLeft,
                   child: Padding(
                    padding: EdgeInsets.only(left: 15, top: 30),
                    child: Text(
                        "Do you have a priot work experience?",
                    style: TextStyle(
                      fontSize: 16
                    ),),
                ),
                 ),
                Padding(
                  padding: const EdgeInsets.only(left: 60, top: 30),
                  child: Row(children: const [
                    Icon(Icons.radio_button_checked, color: appcolors.greenishText),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text("No", style: TextStyle(
                          fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 110),
                      child: Icon(Icons.radio_button_off, color: appcolors.greenishText),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text("Yes", style: TextStyle(
                          fontWeight: FontWeight.bold),),
                    )
                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ConTainer(
                  CenterText: 'Projects',
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 0, right: 150, top: 30),
                  child: Text(
                      "Please add your projects.",
                  style: TextStyle(
                    fontSize: 16,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
                  child: OutlinedTextField(HintText: 'Add Projects',)
                ),
                                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ConTainer(
                    CenterText: 'Languages',

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 0, right: 135, top: 30),
                  child: Text(
                      "Please add your languages.",
                  style: TextStyle(
                    fontSize: 16
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
                  child: OutlinedTextField(HintText: 'Add Languages',)
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: ConTainer(
                    CenterText: 'Hobbies',

                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 0, right: 150, top: 30),
                  child: Text(
                      "Please add your hobbies.",
                  style: TextStyle(
                    fontSize: 16
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
                  child: OutlinedTextField(HintText: 'Add Hobbies',)
                ),


                Padding(
                  padding: const EdgeInsets.only( left: 15,right: 15,top: 25),
                  child: ConTainer(
                   CenterText: 'References',
                  ),
                ),
                 const Align(
                   alignment: Alignment.centerLeft,
                   child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 30),
                    child: Text(
                        "Please add your references(if any).",
                    style: TextStyle(
                      fontSize: 16
                    ),),
                ),
                 ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
                  child:OutlinedTextField(HintText: 'Add Refrences',)
                ),


              ],
            ),
          ),
        )
      ]),
    );
  }}