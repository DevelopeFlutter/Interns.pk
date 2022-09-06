import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/About_Interns.dart';
import 'package:interns/Views/Account_Settings.dart';
import 'package:interns/Views/Feeback.dart';
import 'package:interns/Views/remove_post.dart';
class SettingView extends StatefulWidget {
  const SettingView({Key? key}) : super(key: key);
  @override
  State<SettingView> createState() => _SettingViewState();
}
class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: appcolors.greenishText,
            height: 80,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Text(
                  "Settings",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AccountSettings()));
                    },
                    child: const Text(
                      "Account Setting",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    )),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: appcolors.greenishText,
                  size: 22,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            height: 2,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 20, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AboutInterns()));
                    },
                    child: const Text(
                      "About Interns.pk",
                      style: TextStyle(color: Colors.black,
                      fontSize: 16),
                    )),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: appcolors.greenishText,
                  size: 22,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FeedBack()));
                    },
                    child: const Text(
                      "Feedback",
                      style: TextStyle(color: Colors.black,
                      fontSize: 16),
                    )),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: appcolors.greenishText,
                  size: 22,)
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Share this Application",
                      style: TextStyle(color: Colors.black,
                      fontSize: 16),
                    )),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: appcolors.greenishText,
                  size: 22,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Sign Out",
                      style: TextStyle(color: Colors.black,
                      fontSize: 16),
                    )),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: appcolors.greenishText,
                  size: 22,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Container(
            width: double.infinity,
            height: 2,
            color: Colors.grey.withOpacity(0.5),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>Removejob()));
                    },
                    child: const Text(
                      "Delete Posted Applications",
                      style: TextStyle(color: Colors.black,
                          fontSize: 16),
                    )),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: appcolors.greenishText,
                  size: 22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
