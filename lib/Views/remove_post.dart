import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Style.dart';

import '../Services/Auth_Services/signUp.dart';

class remove_job extends StatelessWidget {
  const remove_job({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:  appcolors.greenishText,
          title: const Center(child: Text("Posted Applications",style: TextStyle(fontFamily: 'Hind'),)),
        ),
        body:
        FutureBuilder(
        future: null,
    builder: (context, AsyncSnapshot snapshot) {
      if (snapshot.hasData) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 6,
            itemBuilder: (BuildContext context, int index) =>
                Padding(
                  padding:
                  const EdgeInsets.only(top: 5, bottom: 5),
                  child: Column(
                      children: [
                        Container(
                          height: 77,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Row
                              (
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 34),
                                      child: Text("Flutter Developer"),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.0, right: 80),
                                      child: Text("SAU-Tech",
                                        style: AppTextStyle
                                            .WithOpacityBlackColor,),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.0, right: 40),
                                      child: Text("Lahore, Pakistan"),
                                    )
                                  ],
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
                                              backgroundColor: MaterialStateProperty
                                                  .all(appcolors.greenishText),
                                              shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius: BorderRadius
                                                      .circular(9),
                                                ),
                                              ),
                                            ),
                                            onPressed: () {},
                                            child: const Text("Delete")),
                                      ),
                                    )
                                  ],
                                ),
                                // )
                                // Divider(color: Colors.grey,),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 2,
                          width: double.infinity,
                          color: Colors.black45,
                        )
                      ]),

                ),
          ),

        );
      }
    return Center(child: CircularProgressIndicator());  })
    );
  }
}
