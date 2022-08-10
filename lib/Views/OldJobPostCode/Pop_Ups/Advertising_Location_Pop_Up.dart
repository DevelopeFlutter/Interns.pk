// import 'package:flutter/material.dart';
// import 'package:interns/Pop_Ups/Button_Class.dart';
//
// import 'TextField_For_Pop_Ups.dart';
//
// class AdvertisingLocationPopUp {
//   static Dialogue(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return Dialog(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               insetPadding: const EdgeInsets.all(10),
//               backgroundColor: Colors.white,
//               child: SizedBox(
//                   height: 330,
//                   child: Padding(
//                       padding: const EdgeInsets.only(top: 5),
//                       child: Column(children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 25),
//                               child: Text(
//                                 "Edit the job post",
//                                 style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 18,
//                                     color: Colors.black.withOpacity(0.9)),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(right: 12),
//                               child: IconButton(
//                                   onPressed: () {
//                                     Navigator.pop(context);
//                                   },
//                                   icon: const Icon(Icons.close)),
//                             )
//                           ],
//                         ),
//                         const Divider(
//                           color: Colors.black54,
//                         ),
//                         const SizedBox(height: 22),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 25),
//                           child: Align(
//                             alignment: Alignment.centerLeft,
//                             child: Text(
//                               "Where would you like to advertise\nthis job?",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                   color: Colors.black.withOpacity(0.9)),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 2,
//                         ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 25),
//                       child: Align(
//                           alignment:Alignment.centerLeft,child: Text("Enter your location",style: TextStyle(color: Colors.black54),)),
//                     ) ,
//                       SizedBox(
//                         height: 4,
//                       ),
//                         TextFieldForPopUps(),
//                         SizedBox(
//                           height: 30,
//                         ),
//                         Divider(color: Colors.black54,),
//                      ButtonForPopUp() ]
//                       )
//                   )
//               )
//           );
//         }
//         );
//   }
// }
