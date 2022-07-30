import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/backen_json/brows_job_by_city.dart';

class CityListView extends StatefulWidget {
  const CityListView({Key? key}) : super(key: key);
  @override
  State<CityListView> createState() => _CityListViewState();
}
class _CityListViewState extends State<CityListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: appcolors.greenishText,
          title: const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Brows Jobs By City"),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.arrow_back,
                size: 26,
              ))),
      body: ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding: const EdgeInsets.only(
            top: 30,
          ),
           child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 6),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        jobs_by_city[index]['city_name'],
                        style: const TextStyle(
                            fontSize: 18, color: appcolors.greenishText),
                      ),
                      Row(
                        children: [
                          Text(
                            jobs_by_city[index]['totalPosts'],
                            style: const TextStyle(
                                fontSize: 18, color: appcolors.greenishText),
                          ),
                          const Icon(Icons.arrow_forward_ios,
                              size: 24, color: appcolors.greenishText)
                        ],
                      ),
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 3,
                  width: double.infinity,
                  color: Colors.black12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
