// import 'package:flutter/material.dart';
// import 'package:interns/Theme/app_Colors.dart';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:interns/Views/Button.dart';
//
// class SimplePopUp {
//   static  Dialogue(BuildContext context)  {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return SingleChildScrollView(
//             child: Dialog(
//                 insetPadding: const EdgeInsets.all(10),
//                 backgroundColor: Colors.white,
//                 child: SizedBox(
//                   height: 415,
//                   child: Padding(
//                     padding: const EdgeInsets.only(top: 5),
//                     child: Column(
//                       children: [
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
//                         Padding(
//                           padding: const EdgeInsets.only(left: 25),
//                           child: Align(
//                             alignment: Alignment.topLeft,
//                             child: Text(
//                               "Job title",
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black.withOpacity(0.9)),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 25, right: 25),
//                           child: SizedBox(
//                             height: 50,
//                             width: 330,
//                             child: TextField(
//                               decoration: InputDecoration(
//                                 enabledBorder: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                         color: appcolors.greenishText,
//                                         width: 1.5),
//                                     borderRadius: BorderRadius.circular(10)),
//                                 focusedBorder: OutlineInputBorder(
//                                     borderSide: const BorderSide(
//                                         width: 1.5,
//                                         color: appcolors.greenishText),
//                                     borderRadius: BorderRadius.circular(10)),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               left: 25, right: 25, top: 40),
//                           child: Container(
//                             height: 120,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(10),
//                               border: Border.all(
//                                   width: 1.5, color: appcolors.greenishText
//                                   // Colors.black.withOpacity(0.2)
//                                   ),
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.only(top: 15, left: 15),
//                               child: Row(
//                                 children: const [
//                                   Align(
//                                     alignment: Alignment.topLeft,
//                                     child: Icon(
//                                       Icons.report_problem,
//                                       color: appcolors.greenishText,
//                                     ),
//                                   ),
//                                   Expanded(
//                                     child: Padding(
//                                       padding: EdgeInsets.only(
//                                           left: 10, top: 4, right: 8),
//                                       child: Align(
//                                         alignment: Alignment.topLeft,
//                                         child: AutoSizeText(
//                                           "If you change the job title or category now, "
//                                           "you may need to enter additional information "
//                                           "before posting your job.",
//                                           maxLines: 5,
//                                           textAlign: TextAlign.justify,
//                                           style: TextStyle(fontSize: 16),
//                                         ),
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 18,
//                         ),
//                         const Divider(
//                           color: Colors.black54,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 10, left: 110),
//                           child: Row(
//                             children: [
//                               Padding(
//                                 padding: const EdgeInsets.only(right: 5),
//                                 child: SizedBox(
//                                   height: 50,
//                                   width: 100,
//                                   child: Elevatedbutton('Close', () {}),
//                                 ),
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
//                       ],
//                     ),
//                   ),
//                 )),
//           );
//         });
//   }
// }
