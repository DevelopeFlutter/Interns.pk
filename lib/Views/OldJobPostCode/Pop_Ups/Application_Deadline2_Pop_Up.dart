// import 'package:flutter/material.dart';
//
// import 'Button_Class.dart';
// import 'Cv_required_Pop_Up_small_container.dart';
//
// class ApplicationDeadline2 {
//   static Dialogue(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (BuildContext contex) {
//            return StatefulBuilder(builder: (context, setState) {
//             return Dialog(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               insetPadding: const EdgeInsets.all(10),
//               backgroundColor: Colors.white,
//               child: SizedBox(
//                   height: 345,
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
//                               "Is there an application deadline",
//                               style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 16,
//                                   color: Colors.black.withOpacity(0.9)),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 5,
//                         ),
//                         CvRequiredpopUpSmallContainer(text: 'Yes'),
//                         const SizedBox(
//                           height: 9,
//                         ),
//                         CvRequiredpopUpSmallContainer(text: 'No'),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         const Divider(
//                           color: Colors.black54,
//                         ),
//                         const ButtonForPopUp()
//                       ]))),
//             );
//           });
//         });
//   }
// }
