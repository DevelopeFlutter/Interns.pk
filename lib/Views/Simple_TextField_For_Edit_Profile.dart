import 'package:flutter/material.dart';
class SimpleTextFormFiled extends StatelessWidget {
   SimpleTextFormFiled({required this.labelText ,  Key? key}) : super(key: key);
  String labelText;

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      decoration:  InputDecoration(labelText: labelText),
    );
  }
}
