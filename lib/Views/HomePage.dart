// ignore_for_file: camel_case_types, depend_on_referenced_packages, prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:interns/Authentication/Controller/Auth_Controller.dart';
import 'package:interns/Authentication/Controller/home_Page_Controller.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Bottom_Bar.dart';
import 'package:interns/Views/cityListView.dart';
import 'package:interns/Views/jobListView.dart';
import 'package:interns/Views/job_details.dart';
import 'package:interns/Authentication/View/signInView.dart';
import 'package:interns/Authentication/View/signUpView.dart';
import 'package:interns/Views/List_for_homepage_regions.dart';
import 'package:interns/backen_json/brows_job_by_city.dart';
import 'package:interns/backen_json/lates_post.dart';
import '../Services/Auth_Services/signUp.dart';
import 'package:get/get.dart';
import '../utils/loader.dart';
class homePageView extends StatefulWidget {
  const homePageView({Key? key}) : super(key: key);
  @override
  State<homePageView> createState() => _homePageViewState();
}
class _homePageViewState extends State<homePageView> {
  @override
  Widget build(BuildContext context) {
    return const BottomBar();
  }

}
class hompePageSecondPart extends StatefulWidget {
  const hompePageSecondPart({Key? key}) : super(key: key);
  @override
  State<hompePageSecondPart> createState() => _hompePageSecondPartState();
}
class _hompePageSecondPartState extends State<hompePageSecondPart> {
  TextEditingController companyNameController = TextEditingController();
  TextEditingController placeNameController = TextEditingController();
  RegionandSkillController getregionVal  = Get.put(RegionandSkillController());
  var regionVal;
  bool firstTime = true;
  List cities =[];
  @override
  initState(){
    fetData();
    super.initState();
  }
  dynamic  funcData;
  void fetData()async{
    try{
        funcData = await getData();
      setState(() {
        funcData;
        PopupLoader.hide();
      });

    }
  catch (e) {
      print(e);
    }
  }
  @override
  void didChangeDependencies(){

    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    placeNameController.text = getregionVal.regions.toString();
    var   region=getregionVal.regions;
   var skill =getregionVal.skill;
    var obj={
      'region':region,
      'skill':skill,
    };
    Authcontroller getData = Get.put(Authcontroller());
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
        height: 500,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/onBording1.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Text(
                'Find Interns',
                style: TextStyle(color: Colors.white, fontSize: 36),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: TextField(
                onChanged: (value) {
setState(() {
   companyNameController.text=value ;
   companyNameController.selection = TextSelection.fromPosition(
       TextPosition(offset:companyNameController.text.length));
  getregionVal.skill.value=value;
});
                },
                style: const TextStyle(color: Colors.white),
                controller: companyNameController,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2)),
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30,
                      color: Colors.white,
                    ),
                    labelText: 'skill, Company name',
                    labelStyle: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8, top: 30),
               child:
              TextField(
                readOnly: true,
                style: const TextStyle(color: Colors.white),
                onTap: (){
                  Get.to(const HomePageRegionsTextField());
                },
                controller:
                placeNameController,
                onChanged: (value) {

                },
                decoration:  const InputDecoration(
                  focusedBorder:UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white,width: 2)
                  ),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 2),),
                    prefixIcon: Icon(
                      Icons.location_on,
                      size: 30,
                      color: Colors.white,
                    ),
                    hintText: 'All Regions',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 18)),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
                    backgroundColor:
                        MaterialStateProperty.all(appcolors.greenishText),
                  ),
                  onPressed: () {
   print(obj);
                  },
                  child: const Text(
                    'Find Interns',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
             if (getData.data==null)
             Column(
              children: [
                GestureDetector(
                    child: const Text(
                      'Create an account',
                       style: TextStyle(
                          color: appcolors.greenishText,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpView()));
                    }),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 70),
                  child: Text(
                    'Already have an account?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Padding(
                    padding: EdgeInsets.only(left: 6),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: appcolors.greenishText,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const signInView()));
                  },
                )
                ],
            ),
    ]
            )
            else Container()
          ],
        ),
      ),
      const SizedBox(
        height: 4,
      ),
      Container(
        color: Colors.black12,
        height: 3,
      ),
      const Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'Brows Jobs By City',
          style: TextStyle(
            color: appcolors.greenishText,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
      ),
      ListView.builder(
        shrinkWrap: true,
         physics: const ScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) => Padding(
          padding:
              const EdgeInsets.only(top: 12, bottom: 12, left: 12, right: 12),
          child: Column(
            children: [
              GestureDetector(
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
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const jobListView()));
                },
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
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            height: 40,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(appcolors.greenishText),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CityListView()));
                },
                child: const Text(
                  'See More',
                  style: TextStyle(fontSize: 20),
                )),
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Container(
        color: Colors.black12,
        height: 3,
      ),
      const Padding(
        padding: EdgeInsets.only(top: 20),
        child: Text(
          'Latest Post',
          style: TextStyle(
            color: appcolors.greenishText,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
      ),
      funcData != null
          ? ListView.builder(
          physics: const ScrollPhysics(),
          shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount:
              funcData['data'].length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height:120,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    border:Border(
                      bottom:BorderSide(
                        color: Colors.black12,
                        style: BorderStyle.solid,
                        width:3,
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
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.ideographic,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 15),
                                    child: Text(
                                      funcData['data'][index]['job_title'],
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Text(
                                    funcData['data'][index]['company_name'],
                                    style: const TextStyle(
                                      fontSize: 15,
                                      color: Colors.black87,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        funcData['data'][index]['job_location'],
                                      ),
                                      Text(
                                          "(${funcData['data'][index]['work_placetype']})"),
                                    ],
                                  ),
                                  Text(lates_post[index]['Post_date']),
                                ],
                              ),
                            ),
                          ]),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Jobdetails(
                                    '${funcData['data'][index]['job_location']}',
                                    ' ${funcData['data'][index]['job_title']}',
                                    '${funcData['data'][index]['job_type']}',
                                    '${funcData['data'][index]['description']}')));
                      },
                    ),
                  ]),
                );
              })
            :const Text(
              "No Data Found",
              style: TextStyle(fontSize: 36),
            ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            height: 40,
            child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(appcolors.greenishText),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ))),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const jobListView()));
                },
                child: const Text(
                  'See More',
                  style: TextStyle(fontSize: 20),
                )),
          ),
        ),
      ),
    ])));
  }

}
