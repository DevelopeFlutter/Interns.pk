// import 'package:flutter/material.dart';
// import 'package:auto_size_text/auto_size_text.dart';
//
// import '../Views/Button.dart';
//
// class JobType {
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
//                   height: 250,
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
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         const Padding(
//                           padding: EdgeInsets.only(left: 25),
//                           child: Align(
//                             alignment: Alignment.centerLeft,
//                             child: AutoSizeText(
//                               "What is the job type?",
//                               style: TextStyle(
//                                   fontSize: 16, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 25,top: 3),
//                           child: Row(
//                             children: [
//                               Container(
//                                   height: 32,
//                                   width: 100,
//                                   decoration: BoxDecoration(
//                                       border: Border.all(
//                                           color: Colors.black.withOpacity(0.4),
//                                           width: 1.5),
//                                       borderRadius: BorderRadius.circular(20)),
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: const [
//                                       Text(
//                                         "Full-time",
//                                         style: TextStyle(fontSize: 16),
//                                       ),
//                                     ],
//                                   )),
//
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 7),
//                                 child: Container(
//                                     height: 32,
//                                     width: 100,
//                                     decoration: BoxDecoration(
//                                         border: Border.all(
//                                             color: Colors.black.withOpacity(0.4),
//                                             width: 1.5),
//                                         borderRadius: BorderRadius.circular(20)),
//                                     child: Column(
//                                       mainAxisAlignment: MainAxisAlignment.center,
//                                       children: const [
//                                         Text(
//                                           "Part-time",
//                                           style: TextStyle(fontSize: 16),
//                                         ),
//                                       ],
//                                     )),
//                               ),
//                             ],
//                           ),
//                         ),
//                       const SizedBox(
//                         height: 15,
//                       ),
//
//                       const Divider(
//                         color: Colors.black54,
//                       ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10, left: 115),
//                           child: Row(
//                             children: [
//                               SizedBox(
//                                 height: 50,
//                                 width: 100,
//                                 child: Elevatedbutton('Close', () {}),
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 8),
//                                 child: SizedBox(
//                                   height: 50,
//                                   width: 100,
//                                   child: Elevatedbutton('Upload', () {}),
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ]))));
//         });
//   }
// }
