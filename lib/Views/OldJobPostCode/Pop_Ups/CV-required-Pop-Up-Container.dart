import 'package:flutter/material.dart';

class CvRequiredpopUP extends StatefulWidget {
  String SmallText;
  String LargeText;
  CvRequiredpopUP({required this.SmallText, required this.LargeText});

  @override
  State<CvRequiredpopUP> createState() => _CvRequiredpopUPState();
}

class _CvRequiredpopUPState extends State<CvRequiredpopUP> {
  var _result;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 10),
      child: Container(
        height: 105,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Colors.black.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Transform.scale(
                    scale: 1.5,
                    child: Radio(
                        value: 1,
                        groupValue: _result,
                        onChanged: (value) {
                          setState(() {
                            _result = value;
                          });
                        }),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3, left: 2),
                  child: Text(
                    widget.SmallText,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                widget.LargeText,
                style: TextStyle(
                    color: Colors.black.withOpacity(0.7), fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
