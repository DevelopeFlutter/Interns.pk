// import 'package:flutter/material.dart';
// import 'package:interns/Pop_Ups/Button_Class.dart';
//
// import 'CV-required-Pop-Up-Container.dart';
// import 'Cv_required_Pop_Up_small_container.dart';
// class    ApplicationDeadlinePopup{
//   static Dialogue(BuildContext context) {
//     var _result;
//     showDialog(context: context, builder:(BuildContext context) {
//       return StatefulBuilder(builder: (context, setState) {
//         return SingleChildScrollView(
//             child: Dialog(
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 insetPadding: const EdgeInsets.all(10),
//                 backgroundColor: Colors.white,
//                 child: SizedBox(
//                   height: 780,
//                   child: Padding(
//                       padding: const EdgeInsets.only(top: 5),
//                       child: Column(children: [
//                         Row(
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
//
//                       CvRequiredpopUP(
//                         LargeText:
//                         'People will be required to\ninclude a Cv.',
//                         SmallText: 'Yes',
//                       ),
//                       CvRequiredpopUP(
//                         LargeText:
//                         'People will not be asked to\ninclude a Cv.',
//                         SmallText: 'No',
//                       ),
//                       CvRequiredpopUP(
//                         LargeText:
//                         'People can choose whether to \n include a Cv.',
//                         SmallText: 'Optional',
//                       ),
//                       const SizedBox(
//                         height: 40,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 25),
//                         child: Align(
//                           alignment: Alignment.centerLeft,
//                           child: Text(
//                             "Is there an application deadline?",
//                             style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: Colors.black.withOpacity(0.9)),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 5,
//                       ),
//                       CvRequiredpopUpSmallContainer(text: 'Yes'),
//                       const SizedBox(
//                         height: 9,
//                       ),
//                       CvRequiredpopUpSmallContainer(text: 'No'),
//                         Align(
//                           alignment: Alignment.centerLeft,
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 25, right: 25,top: 10),
//                             child: Container(
//                                 height: 35,
//                                 width: 110,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(width: 1.5,
//                                       color: Colors.black.withOpacity(0.4)),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child:  Padding(
//                                   padding: const EdgeInsets.only(left: 10),
//                                   child: Row(
//                                     children: [
//                                       Text("19/07/2022"),
//                                     ],
//                                   ),
//                                 )
//                             ),
//                           ),
//                         ),
//
//                       const SizedBox(height: 40,),
//                       const Divider(
//                         color: Colors.black54,
//                       ),
//
//                 ButtonForPopUp()
//                       ]
//
//                   ),
//                 )
//             )
//         ),);
//
//
//       });
//     }); }
//
//
//
// }