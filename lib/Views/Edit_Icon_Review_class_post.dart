import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
class IconButtonforReviewjob extends StatelessWidget {
   IconButtonforReviewjob({required this.onTap, Key? key}) : super(key: key);
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return
     Padding(
       padding: const EdgeInsets.only(left: 10),
       child: GestureDetector(onTap:onTap ,
         child:  const Icon(
            Icons.edit,
            color: appcolors.greenishText,
          ),
       ),
     );
  }
}
