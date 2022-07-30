import 'package:flutter/material.dart';

import 'Button_Class.dart';
import 'TextField_For_Pop_Ups.dart';
class FistNameLastNamePhoneNumber extends StatelessWidget {
  FistNameLastNamePhoneNumber({ required this.TextForPopUps,Key? key}) : super(key: key);
String TextForPopUps;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 290,
        child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text(
                      "Edit the job post",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.9)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.close)),
                  )
                ],
              ),
              const Divider(
                color: Colors.black54,
              ),
              const SizedBox(height: 22),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      TextForPopUps,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black.withOpacity(0.9)),
                  ),
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              const TextFieldForPopUps(),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                color: Colors.black54,
              ),
              const ButtonForPopUp()
            ])));
  }
}
