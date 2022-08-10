// import 'package:flutter/material.dart';
// import 'package:interns/Theme/app_Colors.dart';
// class ModalBottomSheetWorkPlace {
//   // ModalBottomSheet(this.var1,this.var12,this.var2,this.var3,this.var22,this.var33);
//   // final var1;
//   // final  var12;
//   // final  var2;
//   // final  var22;
//   // final  var3;
//   // final  var33;
//   static void moreModalBottomSheet(context) {
//
//     int  _result =0;
//    // Size size = MediaQuery.of(context).size;
//     showModalBottomSheet(
//       shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(30),
//             topLeft: Radius.circular(30),
//           )),
//       context: context,
//       builder: (context) {
//         return StatefulBuilder(
//
//           builder: (BuildContext context, StateSetter setState ) {
//
//     void  groupvalue(  value){
//     setState(() {
//     _result = value;
//     });}
//             return SizedBox(
//               height: 240,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.baseline,
//                 textBaseline: TextBaseline.ideographic,
//                 children: [
//
//                   const SizedBox(
//                     height: 10,
//                   ),
//                   const Divider(
//                     color: Colors.black,
//                     thickness: 5,
//                     indent: 150,
//                     endIndent: 150,
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.only(left: 30, top: 20),
//                     child: Text(
//                       "Choose the workplace type",
//                       style: TextStyle(
//                           fontSize: 18, fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 30, top: 5),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.baseline,
//                               textBaseline: TextBaseline.ideographic,
//                               children: [
//                                 Text(
//                                   "On-site",
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.black.withOpacity(0.7)),
//                                 ),
//                                 const SizedBox(
//                                   height: 2,
//                                 ),
//                                 Text(
//                                   "Employees come to work in-person.",
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.black.withOpacity(0.7),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(right: 10),
//                               child: Transform.scale(
//                                 scale: 1.2,
//                                 child: Radio(
//                                   fillColor: MaterialStateColor.resolveWith(
//                                           (states) => appcolors.greenishText),
//                                   value: 1,
//                                   groupValue: _result,
//
//                                   onChanged: groupvalue,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 30, top: 5),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.baseline,
//                               textBaseline: TextBaseline.ideographic,
//                               children: [
//                                 Text(
//                                   "Hybrid",
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.black.withOpacity(0.7)),
//                                 ),
//                                 const SizedBox(
//                                   height: 2,
//                                 ),
//                                 Text(
//                                   "Employees work on-site and off-site",
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.black.withOpacity(0.7),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(right: 10),
//                               child: Transform.scale(
//                                 scale: 1.2,
//                                 child: Radio(
//                                   fillColor: MaterialStateColor.resolveWith(
//                                           (states) => appcolors.greenishText),
//                                   value: 2,
//                                   groupValue: _result,
//                                   onChanged: groupvalue,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.only(left: 30, top: 5),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.baseline,
//                               textBaseline: TextBaseline.ideographic,
//                               children: [
//                                 Text(
//                                   "Remote",
//                                   style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.w600,
//                                       color: Colors.black.withOpacity(0.7)),
//                                 ),
//                                 const SizedBox(
//                                   height: 2,
//                                 ),
//                                 Text(
//                                   "Employees work off-site",
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.w500,
//                                     color: Colors.black.withOpacity(0.7),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(right: 10),
//                               child: Transform.scale(
//                                 scale: 1.2,
//                                 child: Radio(
//                                   fillColor: MaterialStateColor.resolveWith(
//                                           (states) => appcolors.greenishText),
//                                   value: 3,
//                                   groupValue: _result,
//                                   onChanged: groupvalue,
//                                 ),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             );
//           },
//         );
//       });
//
//     }
//   }
//
//
//
