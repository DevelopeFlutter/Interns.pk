import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Style.dart';

import '../Authentication/Controller/Job_Get_Controller.dart';
import '../Services/Auth_Services/signUp.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'  as http;

import '../backen_json/lates_post.dart';
import 'for_test.dart';

class Removejob extends StatefulWidget {
   Removejob({Key? key}) : super(key: key);

  @override
  State<Removejob> createState() => _RemovejobState();
}

class _RemovejobState extends State<Removejob> {
  @override
  ModelController Modelcontroller = Get.put(ModelController());

  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
            appBar: AppBar(
              backgroundColor:  appcolors.greenishText,
              title:  const Center(child: Text("Posted Applications",style: TextStyle(fontFamily: 'Hind'),)),
            ),
            body:
                Obx(()=>
            Modelcontroller.isLoading.value
                ? const Center(child: CircularProgressIndicator()):
                ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount:Modelcontroller.welcome?.data.length,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding:
                const EdgeInsets.only(top: 5, bottom: 5),
                child: Column(
                    children: [
                      SizedBox(
                        height: 77,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children:  [
                                  Padding(
                                    padding:  EdgeInsets.only(right: 34),
                                    child: Text(''
                                          '${Modelcontroller.welcome?.data[index].jobTitle}'
                                          ''),
                                    ),

                                  Padding(
                                    padding: const EdgeInsets.only(top: 8.0, right: 80),
                                    child:  Text("${Modelcontroller.welcome?.data[index].companyName}",style: AppTextStyle.WithOpacityBlackColor,)),

                                   Padding(
                                    padding: const EdgeInsets.only(top: 8.0, right: 40),
                                    child:   Text("${Modelcontroller.welcome?.data[index].jobLocation}"),

                                   )],
                              ),
                              Column(
                                children: [
                                  const Text("Today"),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: SizedBox(
                                      height: 30,
                                      width: 120,
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(appcolors.greenishText),
                                            shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(9),
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            setState((){});

                                            DeleteJob("${Modelcontroller.welcome?.data[index].id}");
                                          },
                                          child: const Text("Delete")),
                                    ),
                                  )
                                ],
                              ),
              ])),


                      )] ),

              ),
            ),
               //:const Center(child: Text("No Post yet!",style: TextStyle(fontSize: 36,color: Colors.grey),))
            ),
    );
      }
}
