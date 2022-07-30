import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';
class OutlinedTextField extends StatelessWidget {
  OutlinedTextField({required this.HintText,   Key? key}) : super(key: key);
  String HintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintStyle: const TextStyle(color: appcolors.greenishText),
          hintText: HintText,
          contentPadding: const EdgeInsets.only(top: 5),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide:  const BorderSide(
                width: 2,
                style: BorderStyle.solid,
                color: appcolors.greenishText
            ),
          ),
        ),
      ),
    );
  }
}
class ConTainer extends StatelessWidget {
   ConTainer({ required this.CenterText,  Key? key}) : super(key: key);
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
