// import 'package:flutter/material.dart';
// import 'package:interns/Views/Button.dart';
//
// class CvRequiredpopUpSmallContainer extends StatefulWidget {
//   CvRequiredpopUpSmallContainer({required this.text, Key? key}) : super(key: key);
//   String text;
//   @override
//   State<CvRequiredpopUpSmallContainer> createState() =>
//       _CvRequiredpopUpSmallContainerState();
// }
//
// class _CvRequiredpopUpSmallContainerState
//     extends State<CvRequiredpopUpSmallContainer> {
//   var _result;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 25, right: 25),
//       child: Container(
//         height: 55,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           border: Border.all(width: 1.5, color: Colors.black.withOpacity(0.4)),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 2),
//                   child: Transform.scale(
//                     scale: 1.5,
//                     child: Radio(
//                         value: 1,
//                         groupValue: _result,
//                         onChanged: (value) {
//                           setState(() {
//                             _result = value;
//                           });
//                         }),
//                   ),
//                 ),
//                  Padding(
//                   padding: EdgeInsets.only(top: 3, left: 2),
//                   child: Text(
//                     widget.text,
//                     style: TextStyle(fontSize: 18),
//                   ),
//                 ),
//               ],
//             ),
//
//
//           ],
//         ),
//       ),
//     );
//   }
// }
