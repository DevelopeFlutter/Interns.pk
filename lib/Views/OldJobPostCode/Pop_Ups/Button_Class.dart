import 'package:flutter/material.dart';
import 'package:interns/Views/Button.dart';
class ButtonForPopUp extends StatelessWidget {
  const ButtonForPopUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(top: 10, left: 110),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: SizedBox(
              height: 50,
              width: 100,
              child: Elevatedbutton('Close', () {}),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: SizedBox(
              height: 50,
              width: 100,
              child: Elevatedbutton('Upload', () {}),
            ),
          )
        ],
      ),
    );
  }
}
