// import 'package:flutter/material.dart';
//
// class PostScreenContainer extends StatefulWidget {
//   const PostScreenContainer({Key? key}) : super(key: key);
//
//   @override
//   State<PostScreenContainer> createState() => _PostScreenContainerState();
// }
// class _PostScreenContainerState extends State<PostScreenContainer> {
//   var _result;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 15,right: 15,top: 10),
//       child: Container(
//         height: 75,
//         width: double.infinity,
//         decoration: BoxDecoration(
//           border: Border.all(width: 1.5, color: Colors.black.withOpacity(0.1)),
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.only(bottom: 15),
//           child: Row(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 25, top: 5, left: 5),
//                 child: Radio(
//                     value: '',
//                     groupValue: _result,
//                     onChanged: (value) {
//                       setState(() {
//                         _result = value;
//                       });
//                     }),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 10, left: 5),
//                 child: Text(
//                   "Employees will not report to a\nspecific address",
//                   style: TextStyle(
//                       color: Colors.black.withOpacity(0.6), fontSize: 18),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
