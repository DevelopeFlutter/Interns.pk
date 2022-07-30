import 'package:flutter/material.dart';

class SmallContainerText extends StatelessWidget {
  SmallContainerText({required this.smallcontainerText, Key? key})
      : super(key: key);
  String smallcontainerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,top: 3),
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            height: 5,
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 7),
            child: Text(
              smallcontainerText,
              style:  const TextStyle(
                  fontSize: 16,

              ),
            ),
          )
        ],
      ),
    );
  }
}

class DoubleLineSmallContainerText extends StatelessWidget {
  DoubleLineSmallContainerText({required this.DoubleLineText, Key? key})
      : super(key: key);
  String DoubleLineText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8,top: 3),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              height: 5,
              width: 5,
            ),
          ),
          Padding(
            padding:  const EdgeInsets.only(left: 7, top: 3),
            child: SizedBox(
              width: 300,
              child: Text(
                DoubleLineText,
                style:  const TextStyle(
                  fontSize: 16,

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
