import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Button.dart';
import 'package:interns/Views/container_with-image.dart';
import 'package:interns/Views/postScreen_Container.dart';
import '../utils/loader.dart';
import '../utils/showMessage.dart';
import 'Details.dart';
import 'HomePage.dart';

class BasicInformation extends StatefulWidget {
  const BasicInformation({Key? key}) : super(key: key);
  @override
  State<BasicInformation> createState() => _BasicInformationState();
}

class _BasicInformationState extends State<BasicInformation> {
  bool Showtextfiled = false;
  final TextEditingController Controller = TextEditingController();
  // void _JobPostForm()async{
  //   FocusScope.of(context).unfocus();
  //   try{
  //     PopupLoader.show();
  //     var authResponse = await Login(
  //       controller1.Email.value,
  //       controller1.Password.value,
  //     );
  //     PopupLoader.hide();
  //     print(authResponse['content']);
  //
  //     if(authResponse["content"]['status'] == 200){
  //       ShowMessage().showMessage(context, 'Successfully Login');
  //       Navigator.push(context,
  //           MaterialPageRoute(builder: (context) => const homePageView()));
  //     }else{
  //       ShowMessage().showErrorMessage(context, 'Some Error');
  //       print("message");
  //     }
  //   }catch(e){
  //     PopupLoader.hide();
  //     print(['SubmitLogin Exception:', e.toString()]);
  //   }
  // }

  var items = [
    'Karachi',
    'Lahore',
    'Islamabad',
    'Okara',
    'Kasure',
  ];
  var items1 = [
    'C++',
    'C',
    'Python',
    'Dart',
    'PhP',
  ];
  String? dropdownvalue;
  String? dropdownvalue1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Stack(alignment: AlignmentDirectional.topStart, children: [
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 8, right: 5),
                child: Containar(
                  image: "assets/images/imagetea.jpg",
                  TopRightCirculer: 20,
                  TopLeftCirculer: 20,
                  BottomRightCirculer: 20,
                  BottomLeftCirculer: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 35,
                  left: 25,
                ),
                child: TextForContainer(
                  text: "Provide basic\ninformation",
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 8, right: 5),
              child: Container(
                width: double.infinity,
                height: 255.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(top: 22, left: 18),
                          child: Text(
                            "About this job",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16, top: 12),
                      child: Row(
                        children: [
                          Text(
                            "We use this information to find the best\ncandidates for this job.",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black.withOpacity(0.6)),
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/images/phone.png",
                      height: 100,
                      width: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "Add a job title to get started.",
                        style: TextStyle(
                            fontSize: 17, color: Colors.black.withOpacity(0.6)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 17, left: 8, right: 5),
              child: Container(
                width: double.infinity,
                height: 230.0,
                decoration: const BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //  border: Border.all(width: 5,color: Colors.red)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22, top: 22),
                      child: Row(
                        children: [
                          Text(
                            "City:",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.9)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                // DropDown();
                              },
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                    value: dropdownvalue,
                                    onChanged: (value) {
                                      setState(() {
                                        dropdownvalue = value;
                                      });
                                    },
                                    items: items.map((valueitem) {
                                      return DropdownMenuItem(
                                          value: valueitem,
                                          child: Text(valueitem));
                                    }).toList(),
                                    icon: const Icon(
                                      Icons.edit,
                                      color: appcolors.greenishText,
                                    )),
                              ),
                              // Icon(
                              //   Icons.edit,
                              //   color: Colors.blue.shade900,
                              // ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22, top: 0),
                      child: Row(
                        children: [
                          Text(
                            "Language:",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.9)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: GestureDetector(
                              onTap: () {},
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                    value: dropdownvalue1,
                                    onChanged: (value) {
                                      setState(() {
                                        dropdownvalue1 = value;
                                      });
                                    },
                                    items: items1.map((valueitem) {
                                      return DropdownMenuItem(
                                          value: valueitem,
                                          child: Text(valueitem));
                                    }).toList(),
                                    icon: const Icon(Icons.edit,
                                        color: appcolors.greenishText)),
                              ),
                              // Icon(
                              //   Icons.edit,
                              //   color: Colors.blue.shade900,
                              // ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 22, top: 0),
                      child: Row(
                        children: [
                          Text(
                            "Company name:",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.9)),
                          ),
                          Text(
                            Controller.text.toString(),
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                Showtextfiled = true;
                              });
                            },
                            icon: const Icon(
                              Icons.edit,
                              color: appcolors.greenishText,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Showtextfiled == true
                        ? Padding(
                            padding: const EdgeInsets.only(left: 40, right: 40),
                            child: TextField(
                              controller: Controller,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                icon: const Icon(
                                  Icons.check,
                                  color: appcolors.greenishText,
                                ),
                                onPressed: () {
                                  setState(() {
                                    Showtextfiled = false;
                                  });
                                },
                              )),
                            ),
                          )
                        : Container()
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 17,
                left: 8,
              ),
              child: Container(
                width: double.infinity,
                height: 120.0,
                decoration: const BoxDecoration(
                  color: Colors.white,

                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  //  border: Border.all(width: 5,color: Colors.red)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 22, top: 22),
                      child: Row(children: [
                        Text(
                          "Job title",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.9)),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 330,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 8, right: 5),
              child: Container(
                width: double.infinity,
                height: 260.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),

                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 22),
                      child: Row(
                        children: [
                          Text(
                            "Where will an employee report to work?",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black.withOpacity(0.9)),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: const [
                        SizedBox(
                          height: 20,
                        ),
                        PostScreenContainer(),
                        PostScreenContainer()
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 8, right: 5),
              child: Container(
                width: double.infinity,
                height: 90.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 20,
                            right: 20,
                          ),
                          child: Elevatedbutton('Save and continue', () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Details()),
                            );
                          }),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
