// import 'package:flutter/material.dart';
// import 'package:interns/Pop_Ups/Button_Class.dart';
//
// class EditThejobDescription {
//   static void Dialogue(BuildContext context) {
//     bool isBold = false;
//     bool Italic = false;
//
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return StatefulBuilder(builder: (context, setState) {
//             void StatChange2() {
//               setState(() {
//                 Italic = !Italic;
//               });
//             }
//
//             void Statechange() {
//               setState(() {
//                 isBold = !isBold;
//               });
//             }
//             return SingleChildScrollView(
//               child: Dialog(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   insetPadding: const EdgeInsets.all(10),
//                   backgroundColor: Colors.white,
//                   child: SizedBox(
//                       height: 615,
//                       child: Padding(
//                           padding: const EdgeInsets.only(top: 5),
//                           child: Column(children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.only(left: 25),
//                                   child: Text(
//                                     "Edit the job post",
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 18,
//                                         color: Colors.black.withOpacity(0.9)),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: const EdgeInsets.only(right: 12),
//                                   child: IconButton(
//                                       onPressed: () {
//                                         Navigator.pop(context);
//                                       },
//                                       icon: const Icon(Icons.close)),
//                                 )
//                               ],
//                             ),
//                             const Divider(
//                               color: Colors.black54,
//                             ),
//                             const SizedBox(height: 22),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 25),
//                               child: Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Text(
//                                   "Job description",
//                                   style: TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16,
//                                       color: Colors.black.withOpacity(0.9)),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 25),
//                               child: Text(
//                                 "Describe the responsibilities of this  job, required work experience, skills or education.",
//                                 style: TextStyle(
//                                     fontSize: 17,
//                                     color: Colors.black.withOpacity(0.6)),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(
//                                   top: 8.0, left: 18, right: 20),
//                               child: Container(
//                                 height: 40,
//                                 width: double.infinity,
//                                 decoration: BoxDecoration(
//                                     color: Colors.grey.shade200,
//                                     borderRadius: const BorderRadius.only(
//                                         topRight: Radius.circular(6),
//                                         topLeft: Radius.circular(6))),
//                                 child: Row(
//                                   children: [
//                                     TextButton(
//                                       onPressed: () {
//                                         Statechange();
//                                       },
//                                       child: const Icon(
//                                         Icons.format_bold,
//                                         color: Colors.black,
//                                       ),
//                                     ),
//                                     TextButton(
//                                       onPressed: () {
//                                         StatChange2();
//                                       },
//                                       child: const Icon(
//                                         Icons.format_italic,
//                                         color: Colors.black,
//                                       ),
//                                     ),
//                                     TextButton(
//                                       onPressed: () {},
//                                       child: const Icon(
//                                         Icons.format_list_bulleted,
//                                         color: Colors.black,
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 18, right: 18),
//                               child: TextField(
//                                 style: TextStyle(
//                                     fontWeight: isBold
//                                         ? FontWeight.w800
//                                         : FontWeight.normal,
//                                     fontStyle: Italic
//                                         ? FontStyle.italic
//                                         : FontStyle.normal),
//                                 maxLines: 12,
//                                // maxLength: 300,
//                                 decoration: const InputDecoration(
//                                     focusedBorder: OutlineInputBorder(
//                                         borderSide: BorderSide(
//                                             color: Colors.black12, width: 2))),
//                               ),
//                             ),
//                           SizedBox(
//                             height:45,
//                           ),
//
//                           Divider(color: Colors.black54,),
//
//
//                             ButtonForPopUp(),
//                                  ]
//                           )
//                       )
//                   )
//               ),
//             );
//           }
//           );
//         }); }
//
//
//   }
