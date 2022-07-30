import 'package:flutter/material.dart';
import 'package:interns/Theme/app_Colors.dart';

class Elevatedbutton extends StatelessWidget {
  String? name;
  VoidCallback? onPressed;
  Elevatedbutton(this.name, this.onPressed, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        name!,
        style: name == 'Close' || name == 'Cancel'
            ? const TextStyle(color: Colors.black, fontSize: 17)
            : const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
      ),
      style: ElevatedButton.styleFrom(
        primary: name == 'Cancel' || name == 'Close'
            ? appcolors.white
            : appcolors.greenishText,
        fixedSize: const Size(300, 300),
        side: name == 'Cancel' || name == 'Close'
            ? const BorderSide(color: Colors.black26, width: 2)
            : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
