import 'package:flutter/material.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/job_details.dart';
import 'package:interns/backen_json/lates_post.dart';

import '../Authentication/Controller/Job_Get_Controller.dart';
import 'package:get/get.dart';

class jobListView extends StatefulWidget {
  const jobListView({
    Key? key,
  }) : super(key: key);
  @override
  State<jobListView> createState() => _jobListViewState();
}

class _jobListViewState extends State<jobListView> {
  TextEditingController nameController = TextEditingController();
  var getObject  =GetJobController();
  @override
  void initState(){
    super.initState();
    GeTJob().GetJob();
    print("The InitState is Called");
  }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
     print('${ getObject.getData } This is the Listview');
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          Container(
            height: 80,
            width: double.infinity,
            color: appcolors.greenishText,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 15, top: 25),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back),
                    iconSize: 26,
                    color: Colors.white70,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 0, right: 0, top: 25),
                  child: Text(
                    'Search Results',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: TextField(
              controller: nameController,
              onChanged: (value) {
                lates_post = lates_post
                    .where((element) => element.contains(value))
                    .tojson();
              },
              decoration: const InputDecoration(
                  border: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  labelText: 'Skill Title or Company',
                  labelStyle: TextStyle(
                    fontSize: 18,
                  )),
            ),
          ),
          SizedBox(
              height: size.height - 170,
              child: FutureBuilder(
                  future: GeTJob().GetJob(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: snapshot.data.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 120,
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.black12,
                                    style: BorderStyle.solid,
                                    width: 3,
                                  ),
                                ),
                              ),
                              child: Row(children: [
                                GestureDetector(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 80,
                                          margin: const EdgeInsets.only(
                                            left: 10,
                                            bottom: 10,
                                          ),
                                          child: Image.asset(
                                            lates_post[index]['image'],
                                            height: 100,
                                            width: 100,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 10),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.baseline,
                                            textBaseline:
                                                TextBaseline.ideographic,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 15),
                                                child: Text(
                                                  snapshot.data[index]
                                                      ['job_title'],
                                                  style: const TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                ),
                                              ),
                                              Text(
                                                snapshot.data[index]
                                                    ['company_name'],
                                                style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black87,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    snapshot.data[index]
                                                        ['job_location'],
                                                  ),
                                                  Text(
                                                      "(${snapshot.data[0]['work_placetype']})"),
                                                ],
                                              ),
                                              Text(lates_post[index]
                                                  ['Post_date']),
                                            ],
                                          ),
                                        ),
                                      ]),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Jobdetails(
                                                '${snapshot.data[index]['job_location']}',
                                                ' ${snapshot.data[index]['job_title']}',
                                                '${snapshot.data[index]['job_type']}',
                                                '${snapshot.data[index]['description']}')));
                                  },
                                ),
                              ]),
                            );
                          });
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }))
        ]));
  }
}
