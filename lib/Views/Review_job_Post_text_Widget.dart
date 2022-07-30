import 'package:flutter/material.dart';
import 'Edit_Icon_Review_class_post.dart';
class ReviewJobPostTextWidget extends StatelessWidget {
  ReviewJobPostTextWidget({required this.text, required this.OnTap, Key? key})
      : super(key: key);
  String text;
  VoidCallback OnTap;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black.withOpacity(0.9)),
      ),
      IconButtonforReviewjob(
        onTap:OnTap,
      ),
    ]);
  }
}

class ReviewJobPostBigTextWidget extends StatelessWidget {
  ReviewJobPostBigTextWidget({required this.Bigtext, Key? key})
      : super(key: key);
  String Bigtext;
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(
          Bigtext,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ));
  }
}
