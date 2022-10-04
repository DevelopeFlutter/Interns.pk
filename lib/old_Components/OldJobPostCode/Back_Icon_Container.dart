import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
class Back extends StatelessWidget {
  const Back({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 330,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.black.withOpacity(0.1)),
          borderRadius: BorderRadius.circular(10)),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.arrow_back_ios,
                color: appcolors.greenishText,
                // size: 15,
              ),
              Text(
                "Back",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: appcolors.greenishText),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
