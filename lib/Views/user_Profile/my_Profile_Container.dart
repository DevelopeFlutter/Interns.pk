// ignore_for_file: must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';
class UserProfileContainer extends StatelessWidget {
   UserProfileContainer({ required this.CenterText,  Key? key}) : super(key: key);
    String CenterText;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 40,
      width: 347,
      color: Colors.grey.withOpacity(0.10),
      child:  Center(
          child: Text(CenterText,
            style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          )),
    );
  }
}
