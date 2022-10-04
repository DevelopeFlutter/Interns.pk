// import 'package:flutter/material.dart';
// import 'package:interns/Pop_Ups/Button_Class.dart';
// import 'package:interns/Pop_Ups/TextField_For_Pop_Ups.dart';
// import 'package:interns/Theme/app_Colors.dart';
// class SendDailyUpDates {
//   static Dialogue(BuildContext context) {
//     bool isChecked = false;
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return StatefulBuilder(builder: (context, setState) {
//
//             return Dialog(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 insetPadding: const EdgeInsets.all(10),
//                 backgroundColor: Colors.white,
//                 child: SizedBox(
//                   height: 390,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 5),
//                     child: Column(children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.only(left: 25),
//                             child: Text(
//                               "Edit the job post",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 18,
//                                   color: Colors.black.withOpacity(0.9)),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.only(right: 12),
//                             child: IconButton(
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                 },
//                                 icon: const Icon(Icons.close)),
//                           )
//                         ],
//                       ),
//                       const Divider(
//                         color: Colors.black54,
//                       ),
//                       const SizedBox(height: 22),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 25),
//                         child: Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             "Send daily updates about this job and\napplications to:",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: Colors.black.withOpacity(0.9)),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 3,
//                       ),
//                       const TextFieldForPopUps(),
//                       Row(children: [
//                         Padding(
//                             padding: const EdgeInsets.only(
//                               left: 25,
//                             ),
//                             child: Row(
//                               children: [
//                                 IconButton(
//                                     onPressed: () {},
//                                     icon: const Icon(
//                                       Icons.add,
//                                       color: appcolors.greenishText,
//                                       size: 32,
//                                     )),
//                                 const Text(
//                                   "Add an email",
//                                   style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.bold,
//                                       color: appcolors.greenishText),
//                                 )
//                               ],
//                             ))
//                       ]),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 25),
//                         child: Row(
//                           children: [
//                             Checkbox(
//                               value: isChecked,
//                               onChanged: (bool? value) {
//                                 setState(() {
//                                    isChecked = value!;
//                                 });
//                               },
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.only(top: 15),
//                               child: Text(
//                                   "Also send an individual email update\neach time someone applies."),
//                             )
//                           ],
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 18,
//                       ),
//                       const Divider(
//                         color: Colors.black54,
//                       ),
//                       const ButtonForPopUp(),
//                     ]),
//                   ),
//                 ));
//           });
//         });
//   }
// }
