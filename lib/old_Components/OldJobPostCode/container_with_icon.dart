// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:interns/Views/Style.dart';
// class Container2 extends StatelessWidget {
//    Container2({required this.TopLeftCirculer, required this.TopRightCirculer, required this.BottomRightCirculer, required this.BottomLeftCirculer, Key? key}) : super(key: key);
//   double TopRightCirculer;
//   double BottomRightCirculer;
//   double BottomLeftCirculer;
//   double TopLeftCirculer;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       height: 310.0,
//       decoration:  BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(TopRightCirculer),
//           topLeft: Radius.circular(TopLeftCirculer),
//           bottomLeft: Radius.circular(BottomLeftCirculer),
//           bottomRight: Radius.circular(BottomRightCirculer)
//         ),
//       ),
//       child: Column(
//         children: [
//           const Align(
//             alignment: Alignment.centerLeft,
//             child: Padding(
//               padding: EdgeInsets.only(left: 17, top: 20),
//               child: Text(
//                 "About this job",
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 maxLines: 3,
//                 overflow: TextOverflow.ellipsis,
//                 textAlign: TextAlign.justify,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16, top: 12),
//             child: Row(
//               children: [
//                 Text(
//                   "We use this information to find the best\ncandidates for this job.",
//                   style: TextStyle(
//                       fontSize: 17,
//                       color: Colors.black.withOpacity(0.6)),
//                 )
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 16, top: 12),
//             child: Row(
//               children: [
//                 const Icon(Icons.business_center),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 12),
//                   child: Text(
//                     "Software Developer",
//                     style: TextStyle(
//                         fontSize: 17,
//                         color: Colors.black.withOpacity(0.6)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(top: 12, left: 16),
//             child: Row(
//               children: [
//                 const Icon(Icons.location_on_rounded),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 12),
//                   child: Text(
//                     "Lahore",
//                     style: TextStyle(
//                         fontSize: 17,
//                         color: Colors.black.withOpacity(0.6)),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 15, top: 30),
//               child: Text(
//                 "Advertising location",
//                 style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black.withOpacity(0.9)),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.centerLeft,
//             child: Padding(
//               padding: const EdgeInsets.only(left: 18, top: 15),
//               child:Container(
//                   height: 40,
//                   width: 80,
//                   decoration: BoxDecoration(
//                       color: Colors.grey.shade200,
//                       borderRadius: BorderRadius.circular(5)),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 12, top: 8),
//                     child: Text(
//                       "Lahore",
//                       style: AppTextStyle.LessOpacitytext,
//                     ),
//                   )),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
// // Only one screen  Container (Lahore)  Code....
// // Container(
// // height: 40,
// // width: 80,
// // decoration: BoxDecoration(
// // border: Border.all(
// // color: Colors.black.withOpacity(0.3),
// // width: 1),
// // borderRadius: BorderRadius.circular(20)),
// // child: const Padding(
// // padding: EdgeInsets.only(left: 12, top: 8),
// // child: Text(
// // "Lahore",
// // style: TextStyle(fontSize: 16),
// // ),
// // ))
