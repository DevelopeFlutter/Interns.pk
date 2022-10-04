import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
class PostIconContainer extends StatelessWidget {
  const PostIconContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container( height: 30,
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Colors.white,
            border: Border.all(
                width: 1, color: appcolors.greenishText),
          ),
          child: const Icon(
            Icons.add,
            color: appcolors.greenishText,
          )),
    );
  }
}
