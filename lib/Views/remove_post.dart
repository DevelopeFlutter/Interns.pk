// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Style.dart';
import '../Services/Auth_Services/signUp.dart';
import 'package:get/get.dart';
import '../utils/loader.dart';
class Removejob extends StatefulWidget {
  const Removejob({Key? key}) : super(key: key);
  @override
  State<Removejob> createState() => _RemovejobState();
}
class _RemovejobState extends State<Removejob> {
  dynamic getfuncData;
  bool isLoading = false;
  List newList = [] ;
  // List <dynamic>newlist = [];
  @override
  initState() {
    fetData();
    super.initState();
  }
  @override
  void didUpdateWidget(t) {
   setState(() {
     const Removejob();
   });

    super.didUpdateWidget(t);
  }

  void fetData() async {
    // print("fetch data is Called");
    try {
      setState(() {
        isLoading = true;
      });
      getfuncData = await getData();

       newList = getfuncData['data'];
      print('$newList This is the data in the List');
      if (getfuncData['status'] == 200) {
        setState(() {
          isLoading = false;
        });
      }
    } catch (e) {
      print(e);
    }
  }
  void deleteResponse(index) async{
    var id  = getfuncData['data'][index]['_id'];
    try{
     var resp =  await deleteJob(getfuncData['data'][index]['_id']);
     print('$resp Delete data variable');
     // print('${resp['content']['status']}');
     if(resp['content']['status']==200){
     newList.removeWhere((item)=>item['_id']==id);
     setState(() {
       newList=newList;
     });
     }
     else{
       print("Else Part is Called");
     }
    }
    catch(e){
      print(e);
    }
  }
  void displayDialogue(index) {
    Get.defaultDialog(
        title: "Delete task",
        middleText: "Are you sure want to delete task",
        textCancel: "Cancel",
        textConfirm: "Confirm",
        onCancel: () {
         Navigator.pop(context);
        },
        onConfirm: () {
          deleteResponse(index);
          Get.back();
        });
  }

  @override
  Widget build(BuildContext context) {
    print("new list is ====> $newList");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolors.greenishText,
        title: const Center(
            child: Text(
          "Posted Applications",
          style: TextStyle(fontFamily: 'Hind'),
        )),
      ),
      body: isLoading
          ? PopupLoader.hide()
          : getfuncData['data']?.length > 0
              ? ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: getfuncData['data'].length,
                  itemBuilder: (BuildContext context, int index) => Padding(
                    padding: const EdgeInsets.only(top: 5, bottom: 5),
                    child: Column(children: [
                      SizedBox(
                        height: 77,
                        width: double.infinity,
                        child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 15),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.ideographic,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 34),
                                        child: Text(
                                            '${getfuncData['data'][index]['job_title']}'),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              top: 8.0, right: 80),
                                          child: Text(
                                            "${getfuncData['data'][index]['company_name']}"
                                            "",
                                            style: AppTextStyle
                                                .WithOpacityBlackColor,
                                          )),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, right: 40),
                                        child: Text(
                                            "${getfuncData['data'][index]['job_location']}"
                                            ""),
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
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        appcolors.greenishText),
                                                shape:
                                                    MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            9),
                                                  ),
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  displayDialogue(index);

                                                });
                                              },
                                              child: const Text("Delete")),
                                        ),
                                      )
                                    ],
                                  ),
                                ])),
                      )
                    ]),
                  ),
                )
              : const Center(
                child: Text(
                    "No Data found!",
                    style: TextStyle(fontSize: 30),
                  ),
              ),
    );
  }
}
