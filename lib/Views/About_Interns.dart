import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:interns/Views/Style.dart';
class AboutInterns extends StatefulWidget {
  const AboutInterns({Key? key}) : super(key: key);
  @override
  State<AboutInterns> createState() => _AboutInternsState();
}
class _AboutInternsState extends State<AboutInterns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolors.greenishText,
        leading: GestureDetector(child: const Icon(Icons.west_outlined),
        onTap: (){
          Navigator.of(context).pop();
        },),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(right: 35),
              child: Text("About Interns.pk ."),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 40,),
          SizedBox(
            height: 130,
            width: 130,
            child: Image.asset(
              "assets/images/About.jpg",
            ),
          ),
           Padding(
            padding: EdgeInsets.only(left: 15, right: 10,top:20),
            child: Text(
                "We see ourselves not necesserly as pioneers, but as tchnol-ogy compay with an unwavering desire.",
            style:AppTextStyle.TextSize),
          ),
       ],
      ),
    );
  }
}
