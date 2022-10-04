// import 'package:flutter/material.dart';
// import 'package:interns/Pop_Ups/Cv_required_Pop_Up_small_container.dart';
// import 'package:interns/Views/Button.dart';
//
// import 'CV-required-Pop-Up-Container.dart';
//
// class CvRequiredPopUp {
//   static Dialogue(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return StatefulBuilder(builder: (context, setState) {
//             return SingleChildScrollView(
//               child: Dialog(
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                   insetPadding: const EdgeInsets.all(10),
//                   backgroundColor: Colors.white,
//                   child: SizedBox(
//                       height: 770,
//                       child: Padding(
//                           padding: const EdgeInsets.only(top: 5),
//                           child: Column(
//                             children: [
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 25),
//                                     child: Text(
//                                       "Edit the job post",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 18,
//                                           color: Colors.black.withOpacity(0.9)),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(right: 12),
//                                     child: IconButton(
//                                         onPressed: () {
//                                           Navigator.pop(context);
//                                         },
//                                         icon: const Icon(Icons.close)),
//                                   )
//                                 ],
//                               ),
//                               const Divider(
//                                 color: Colors.black54,
//                               ),
//                               const SizedBox(height: 22),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 25),
//                                 child: Align(
//                                   alignment: Alignment.centerLeft,
//                                   child: Text(
//                                     "Would you like people to submit a\nCv?",
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 16,
//                                         color: Colors.black.withOpacity(0.9)),
//                                   ),
//                                 ),
//                               ),
//                               CvRequiredpopUP(
//                                 LargeText:
//                                     'People will be required to\ninclude a Cv.',
//                                 SmallText: 'Yes',
//                               ),
//                               CvRequiredpopUP(
//                                 LargeText:
//                                     'People will not be asked to\ninclude a Cv.',
//                                 SmallText: 'No',
//                               ),
//                               CvRequiredpopUP(
//                                 LargeText:
//                                     'People can choose whether to \n include a Cv.',
//                                 SmallText: 'Optional',
//                               ),
//                               const SizedBox(
//                                 height: 40,
//                               ),
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 25),
//                                 child: Align(
//                                   alignment: Alignment.centerLeft,
//                                   child: Text(
//                                     "Is there an application deadline?",
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 16,
//                                         color: Colors.black.withOpacity(0.9)),
//                                   ),
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 5,
//                               ),
//                               CvRequiredpopUpSmallContainer(text: 'Yes'),
//                               SizedBox(
//                                 height: 9,
//                               ),
//                               CvRequiredpopUpSmallContainer(text: 'No'),
//                               SizedBox(height: 20,),
//                               const Divider(
//                                 color: Colors.black54,
//                               ),
//
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 10, left: 110),
//                                 child: Row(
//                                   children: [
//                                     Padding(
//                                       padding: const EdgeInsets.only(right: 5),
//                                       child: SizedBox(
//                                         height: 50,
//                                         width: 100,
//                                         child: Elevatedbutton('Close', () {}),
//                                       ),
//                                     ),
//                                     Padding(
//                                       padding: const EdgeInsets.only(left: 8),
//                                       child: SizedBox(
//                                         height: 50,
//                                         width: 100,
//                                         child: Elevatedbutton('Upload', () {}),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               ),     ],
//                           )))),
//             );
//           });
//         });
//   }
// }
