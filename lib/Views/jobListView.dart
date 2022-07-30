import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/job_details.dart';
import 'package:interns/backen_json/lates_post.dart';

class jobListView extends StatefulWidget {
  const jobListView({Key? key}) : super(key: key);

  @override
  State<jobListView> createState() => _jobListViewState();
}

class _jobListViewState extends State<jobListView> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
              onChanged: (value){
                lates_post = lates_post.where((element) =>element.contains(value)).tojson();

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
            height: size.height-170,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: lates_post.length,
              itemBuilder: (BuildContext context, int index) => Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Container(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
                          Column(
                            children: [
                               Padding(
                                padding: const EdgeInsets.only(left: 10, top: 15),
                                child: Text(
                                  lates_post[index]['Job_title'],
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                               Padding(
                                padding: const EdgeInsets.only(
                                  left: 10,
                                ),
                                child: Text(
                                  lates_post[index]['company_name'],
                                  style: const TextStyle(
                                    fontSize: 15,
                                    color: Colors.black38,
                                  ),
                                ),
                              ),
                              Row(
                                children:  [
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        lates_post[index]['Location'],
                                      )),
                                  const Text('|'),
                                  Text(lates_post[index]['Post_date']),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      onTap: (){
                        Navigator.push
                          (context, MaterialPageRoute(builder: (context) =>const Jobdetails()));
                      },
                    ),
                  ]),
                ),
              ),
            ),
          )
        ]));
  }
}