
import 'package:flutter/material.dart';
import 'package:interns/Views/HomePage.dart';
import 'package:interns/Views/Job%20Found.dart';
import 'package:interns/Views/My_profile.dart';
import 'package:interns/Views/New_JobPost_section/Job_Post.dart';
import 'package:interns/Views/OldJobPostCode/postScreenView.dart';
import 'package:interns/Views/setting.dart';
import 'package:interns/Theme/app_Colors.dart';
import '../Authentication/Controller/Job_Get_Controller.dart';
import 'OldJobPostCode/postScreenView.dart';
import 'package:get/get.dart';



class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  static  final List<Widget> _widgetOptions = <Widget>[

    const hompePageSecondPart(),
     const JobApplied(),
     const MyProfile(),
    const SettingView(),
    const JobPost()
     //const BasicInformation(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  // JobsList GetData = Get.find<JobsList>();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
    ),
     bottomNavigationBar:BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
            color:  Colors.black54,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon:  Icon(
              Icons.tab,
              color: Colors.black54,
            ),
            label: 'Applications',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_box,
              color: Colors.black54,
            ),
            label: 'My Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Colors.black54,
            ),
            label: 'Settings',
          ),
           BottomNavigationBarItem(
            icon: Icon(
              Icons.post_add,
              color: Colors.black54,
            ),
            label: 'Post',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: appcolors.greenishText,
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
     ));

  }
}
