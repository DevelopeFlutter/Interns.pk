// import 'package:flutter/material.dart';
// import 'package:interns/Theme/app_Colors.dart';
// import 'package:interns/Views/New_JobPost_section/GetX_class.dart';
// import 'package:get/get.dart';
// class ModalBottomSheetJobType{
//   static  void moreModalBottomSheet(context) {
//     int?  _result;
//     JobPostController controller1 = Get.put(JobPostController());
//     // Size size = MediaQuery.of(context).size;
//     showModalBottomSheet(
//         shape: const RoundedRectangleBorder(
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(30),
//               topLeft: Radius.circular(30),
//             )),
//         context: context,
//         builder: (BuildContext context) {
//           return StatefulBuilder(
//
//             builder: (BuildContext context, StateSetter setState ) {
//
//               // void  groupvalue( value,){
//               //   setState(() {
//               //     _result= value;
//               //
//               //     controller1.setOrderType(_result);
//               //   });}
//               return SizedBox(
//                 height: 175,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.baseline,
//                   textBaseline: TextBaseline.ideographic,
//                   children: [
//
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const Divider(
//                       color: Colors.black,
//                       thickness: 5,
//                       indent: 150,
//                       endIndent: 150,
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(left: 30, top: 20),
//                       child: Text(
//                         "Choose the job type",
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.w500),
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 30, top: 5),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 "Full-time",
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black.withOpacity(0.7)),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(right: 10),
//                                 child: Transform.scale(
//                                   scale: 1.2,
//                                   child: Radio(
//                                     fillColor: MaterialStateColor.resolveWith(
//                                             (states) => appcolors.greenishText),
//                                     value:1,
//                                     groupValue: _result,
//                                     onChanged:
//                                       groupvalue,
//
//                                       ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                     Column(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 30, top: 5),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 "Part-time",
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w600,
//                                     color: Colors.black.withOpacity(0.7)),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(right: 10),
//                                 child: Transform.scale(
//                                   scale: 1.2,
//                                   child: Radio(
//                                     fillColor: MaterialStateColor.resolveWith(
//                                             (states) => appcolors.greenishText),
//                                     value: 2,
//                                     groupValue: _result,
//                                     onChanged: groupvalue,
//                                   ),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               );
//             },
//           );
//         });
//
//   }
//
//
//
//
// }