import 'package:flutter/material.dart';
class TextFieldForPopUps extends StatelessWidget {
  const TextFieldForPopUps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 25,right: 25),
      child: SizedBox(
        height: 45,
        child: TextField(
          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}
