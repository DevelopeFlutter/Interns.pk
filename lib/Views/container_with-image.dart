import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Containar extends StatelessWidget {
  Containar(
      {required this.image,
      required this.BottomLeftCirculer,
      required this.BottomRightCirculer,
      required this.TopLeftCirculer,
      required this.TopRightCirculer,
      Key? key})
      : super(key: key);
  String image;
  double TopRightCirculer;
  double BottomRightCirculer;
  double BottomLeftCirculer;
  double TopLeftCirculer;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        borderRadius:  BorderRadius.only(
            topLeft: Radius.circular(TopLeftCirculer),
            topRight: Radius.circular(TopRightCirculer),
            bottomRight: Radius.circular(BottomRightCirculer),
            bottomLeft: Radius.circular(BottomLeftCirculer)),
        //  border: Border.all(width: 5,color: Colors.red)
      ),
    );
  }
}

class TextForContainer extends StatelessWidget {
  TextForContainer({required this.text, Key? key}) : super(key: key);
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
