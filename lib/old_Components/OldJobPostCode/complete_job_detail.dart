// import 'package:flutter/material.dart';
// import 'package:interns/Theme/app_Colors.dart';
// import 'package:interns/Views/Button.dart';
// import 'package:interns/Views/OldJobPostCode/Describe_The_job.dart';
// import 'package:interns/Views/container_with-image.dart';
// import 'package:interns/Views/container_with_icon.dart';
//
// import '../Back_Icon_Container.dart';
//
// class CompleteJobDetail extends StatefulWidget {
//   const CompleteJobDetail({Key? key}) : super(key: key);
//   @override
//   State<CompleteJobDetail> createState() => _CompleteJobDetailState();
// }
//
// class _CompleteJobDetailState extends State<CompleteJobDetail> {
//   // ignore: non_constant_identifier_names
//   var _result;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade200,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(alignment: AlignmentDirectional.topStart, children: [
//               Padding(
//                   padding: const EdgeInsets.only(top: 18, left: 6, right: 6),
//                   child: Containar(
//                     image: 'assets/images/man3.jpg',
//                     TopLeftCirculer: 20,
//                     TopRightCirculer: 20,
//                     BottomLeftCirculer: 20,
//                     BottomRightCirculer: 20,
//                   )),
//               Padding(
//                 padding: const EdgeInsets.only(
//                   top: 35,
//                   left: 20,
//                 ),
//                 child: TextForContainer(
//                   text: "Complete your job\npost",
//                 ),
//               )
//             ]),
//              Padding(
//               padding: EdgeInsets.only(top: 15, left: 6, right: 6),
//                child: Container2(  TopLeftCirculer: 20,
//                  TopRightCirculer: 20,
//                  BottomLeftCirculer: 20,
//                  BottomRightCirculer: 20,),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 15, left: 6, right: 6),
//               child: Container(
//                 width: double.infinity,
//                 height: 470.0,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(18),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 12,
//                         top: 22,
//                       ),
//                       child: Row(
//                         children: [
//                           Text(
//                               'Need help with your job post? Well create a\ntemplate with smart recommendations or\nyou can complete it on your own.',
//                                 style: TextStyle(
//                                     color: Colors.black.withOpacity(0.8),
//                                     fontSize: 17)
//                           )
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 12, top: 5),
//                       child: Row(
//                         children: [
//                           Text(
//                             "How would you like to complete your job\nposts?",
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black.withOpacity(0.9)),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15, top: 7,right: 15),
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 45,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                                 border: Border.all(
//                                     color: Colors.black.withOpacity(0.2),
//                                     width: 1),
//                                 borderRadius: BorderRadius.circular(8)),
//                             child: Row(
//                               children: [
//                                 Radio(
//                                     value: 'wire',
//                                     groupValue: _result,
//                                     onChanged: (value) {
//                                       setState(() {
//                                         _result = value;
//                                       });
//                                     }),
//                                 const Text(
//                                   "Complete job post on my own",
//                                   style: TextStyle(
//                                       color: Colors.black, fontSize: 18),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15, top: 10,right: 15),
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 250,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                   width: 1.5,
//                                   color: Colors.black.withOpacity(0.1)),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Align(
//                               alignment: Alignment.topLeft,
//                               child: Column(
//                                 children: [
//                                   Row(
//                                     children: [
//                                       Padding(
//                                         padding:
//                                             const EdgeInsets.only(bottom: 20),
//                                         child: Radio(
//                                             value: 'Red',
//                                             groupValue: _result,
//                                             onChanged: (value) {
//                                               setState(() {
//                                                 _result = value;
//                                               });
//                                             }),
//                                       ),
//                                       const Text(
//                                         "Complete my job post with smart\n recommendations",
//                                         maxLines: 2,
//                                         style: TextStyle(
//                                             fontSize: 18),
//                                       )
//                                     ],
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 8.0, left: 50),
//                                     child: Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                               bottom: 15.0),
//                                           child: Container(
//                                             decoration: const BoxDecoration(
//                                                 color: Colors.black,
//                                                 borderRadius: BorderRadius.all(
//                                                     Radius.circular(20))),
//                                             height: 5,
//                                             width: 5,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 8),
//                                           child: Text(
//                                             "A tailored job template that you can\nedit",
//                                             style: TextStyle(
//                                                 fontSize: 15,
//                                                 color: Colors.black
//                                                     .withOpacity(0.6)),
//                                             maxLines: 2,
//                                             overflow: TextOverflow.fade,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 8.0, left: 50),
//                                     child: Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                               bottom: 15.0),
//                                           child: Container(
//                                             decoration: const BoxDecoration(
//                                                 color: Colors.black,
//                                                 borderRadius: BorderRadius.all(
//                                                     Radius.circular(20))),
//                                             height: 5,
//                                             width: 5,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 8),
//                                           child: Text(
//                                             "Suggested data-driven job post\nimprovements",
//                                             style: TextStyle(
//                                                 fontSize: 15,
//                                                 color: Colors.black
//                                                     .withOpacity(0.6)),
//                                           ),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 8.0, left: 50),
//                                     child: Row(
//                                       children: [
//                                         Padding(
//                                           padding: const EdgeInsets.only(
//                                               bottom: 15.0),
//                                           child: Container(
//                                             decoration: const BoxDecoration(
//                                                 color: Colors.black,
//                                                 borderRadius: BorderRadius.all(
//                                                     Radius.circular(20))),
//                                             height: 5,
//                                             width: 5,
//                                           ),
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 8),
//                                           child: Text(
//                                               "Options to increase the visibility of\nyour job",
//                                               style: TextStyle(
//                                                   fontSize: 15,
//                                                   color: Colors.black
//                                                       .withOpacity(0.6))),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(
//                                         top: 8.0, left: 50),
//                                     child: Row(
//                                       children: [
//                                         Container(
//                                           decoration: const BoxDecoration(
//                                               color: Colors.black,
//                                               borderRadius: BorderRadius.all(
//                                                   Radius.circular(20))),
//                                           height: 5,
//                                           width: 5,
//                                         ),
//                                         Padding(
//                                           padding:
//                                               const EdgeInsets.only(left: 8),
//                                           child: Text(
//                                               "Regular job post performance checks",
//                                               style: TextStyle(
//                                                   fontSize: 15,
//                                                   color: Colors.black
//                                                       .withOpacity(0.6))),
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 15, left: 6, right: 6),
//               child: Container(
//                 width: double.infinity,
//                 height: 150.0,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(20),
//                   ),
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 20),
//                       child: SizedBox(
//                         height: 50,
//                         width: double.infinity,
//                         child: Padding(
//                             padding: const EdgeInsets.only(
//                               left: 17,
//                               right: 17,
//                             ),
//                             child: Elevatedbutton('Save and continue', () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(builder: (context) => const Describejob()),
//                               );
//                             })),
//                       ),
//                     ),
//                     const Padding(
//                       padding: EdgeInsets.only(
//                         top: 10,
//                         left: 17,
//                         right: 17
//                       ),
//                        child: Back(),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
// // void   _Navigate() {
// //         (){
// //       Navigator.push(
// //         context,
// //         MaterialPageRoute(builder: (context) => const EditMyProfile()),
// //       );
// //     };
// //   }
// }
