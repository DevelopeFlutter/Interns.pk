// import 'package:flutter/material.dart';
// import 'package:interns/Pop_Ups/Button_Class.dart';
//
// import '../Views/Style.dart';
// import 'package:interns/Theme/app_Colors.dart';
// var items = [
//   '300000',
//   '3050000',
//   '3070000',
//   '400000',
//   '500000',
// ];
// var items1 = [
//   '1',
//   '3 to 5',
//   '5 to 7',
//   '7 to 9',
//   '9 to 11',
// ];
//
// String? dropdownvalue;
// String? dropdownvalue1;
// class PayRateRangePopUp {
//   static Dialogue(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return StatefulBuilder(builder: (context, setState) {
//             return Dialog(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               insetPadding: const EdgeInsets.all(10),
//               backgroundColor: Colors.white,
//               child: SizedBox(
//                 height: 480,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 5),
//                   child: Column(children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 25),
//                           child: Text(
//                             "Edit the job post",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 18,
//                                 color: Colors.black.withOpacity(0.9)),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 12),
//                           child: IconButton(
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               icon: const Icon(Icons.close)),
//                         )
//                       ],
//                     ),
//                     const Divider(
//                       color: Colors.black54,
//                     ),
//                     const SizedBox(height: 22),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "What is the pay rate or range?",
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                               color: Colors.black.withOpacity(0.9)),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 8),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 17, top: 10),
//                             child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Text(
//                                   "Show pay by",
//                                   style: AppTextStyle.SmallText,
//                                 )),
//                           ),
//
//                       Padding(
//                           padding:
//                           const EdgeInsets.only(left: 15, top: 5, right: 15),
//                           child: Container(
//                             height: 50,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                                 border: Border.all(
//                                     color:
//                                     appcolors.greenishText.withOpacity(0.4),
//                                     width: 1.5),
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   const Text(
//                                     "Starting Amount",
//                                     style: TextStyle(fontSize: 16),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(right: 8.0),
//                                     child: DropdownButtonHideUnderline(
//                                       child: DropdownButton<String>(
//                                           value: dropdownvalue,
//                                           onChanged: (value) {
//                                             setState(() {
//                                               dropdownvalue = value;
//                                             });
//                                           },
//                                           items: items.map((valueitem) {
//                                             return DropdownMenuItem(
//                                                 value: valueitem,
//                                                 child: Text(valueitem));
//                                           }).toList(),
//                                           icon: const Icon(
//                                             Icons.expand_more,
//                                             color: appcolors.greenishText,
//                                           )),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           )),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 17, top: 10),
//                         child: Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             "Amount",
//                             style: AppTextStyle.LessOpacitytext,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                           padding:
//                           const EdgeInsets.only(left: 15, top: 5, right: 15),
//                           child: Container(
//                             height: 50,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                                 border: Border.all(
//                                     color:
//                                     appcolors.greenishText.withOpacity(0.4),
//                                     width: 1.5),
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text("PKR 300000",
//                                       style: AppTextStyle.SmallText),
//                                 ],
//                               ),
//                             ),
//                           )),
//
//
//                       Padding(
//                         padding: const EdgeInsets.only(left: 17, top: 10),
//                         child: Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               "Rate",
//                               style: AppTextStyle.SmallText,
//                             )),
//                       ),
//                       Padding(
//                           padding:
//                           const EdgeInsets.only(left: 15, top: 5, right: 15),
//                           child: Container(
//                             height: 50,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                                 border: Border.all(
//                                     color:
//                                     appcolors.greenishText.withOpacity(0.4),
//                                     width: 1.5),
//                                 borderRadius: BorderRadius.circular(10)),
//                             child: Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Text(
//                                     "Per month",
//                                     style: AppTextStyle.SmallText,
//                                   ),
//                                   Align(
//                                     //  alignment: Align,
//                                     child: Padding(
//                                       padding: const EdgeInsets.only(right: 8.0),
//                                       child: DropdownButtonHideUnderline(
//                                         child: DropdownButton<String>(
//                                             value: dropdownvalue1,
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 dropdownvalue1 = value;
//                                               });
//                                             },
//                                             items: items.map((valueitem) {
//                                               return DropdownMenuItem(
//                                                   value: valueitem,
//                                                   child: Text(valueitem));
//                                             }).toList(),
//                                             icon: const Icon(
//                                               Icons.expand_more,
//                                               color: appcolors.greenishText,
//                                             )),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           )
//                       ),
//                   ],
//                   ),
//                     ),
//                 SizedBox(
//                   height: 20,
//                 ),
//                 Divider(
//                   color: Colors.black54,
//                 ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10),
//                     child: ButtonForPopUp(),
//                   )]
//                   )
//                 ),
//               ),);
//           });
//         });
//
//           }
//
//         }
//
//
