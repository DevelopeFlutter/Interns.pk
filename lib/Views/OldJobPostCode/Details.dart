// import 'package:flutter/material.dart';
// import 'package:interns/Theme/app_Colors.dart';
// import 'package:interns/Views/OldJobPostCode/Add_Compensation.dart';
// import 'package:interns/Views/Back_Icon_Container.dart';
// import 'package:interns/Views/Button.dart';
// import 'package:interns/Views/container_with-image.dart';
// import 'package:interns/Views/container_with_icon.dart';
//
// class Details extends StatefulWidget {
//   const Details({Key? key}) : super(key: key);
//   @override
//   State<Details> createState() => _DetailsState();
// }
// class _DetailsState extends State<Details> {
//   var items = [
//     '1',
//     '3',
//     '7',
//     '10',
//     '15',
//   ];
//   var items1 = [
//     '1 to 3',
//     '3 to 5',
//     '5 to 7',
//     '7 to 9',
//     '9 to 11',
//   ];
//   String? dropdownvalue;
//   String? dropdownvalue1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade200,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Stack(alignment: AlignmentDirectional.topStart, children: [
//               Padding(
//                 padding:  const EdgeInsets.only(top: 22, left: 18, right: 8),
//                 child: Containar(
//                   image:"assets/images/image2.jpg",
//                   TopRightCirculer: 20,TopLeftCirculer: 20,BottomRightCirculer: 20,BottomLeftCirculer: 20,
//                 ),
//               ),
//                Padding(
//                 padding: const EdgeInsets.only(
//                   top: 35,
//                   left: 25,
//                 ),
//                 child: TextForContainer(
//                  text: "Include details",
//                 ),
//               )
//             ]),
//              Padding(
//               padding: EdgeInsets.only(top: 20, left: 8, right: 8),
//               child: Container2(  TopLeftCirculer: 20,
//                 TopRightCirculer: 20,
//                 BottomLeftCirculer: 20,
//                 BottomRightCirculer: 20,)
//             ),
//             Padding(
//                 padding: const EdgeInsets.only(
//                   top: 20, left: 8,
//                   //    right: 8
//                 ),
//                 child: Container(
//                   width: double.infinity,
//                   height: 360.0,
//                   decoration: const BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                       bottomLeft: Radius.circular(20),
//                       bottomRight: Radius.circular(20),
//                       // topRight: Radius.circular(5),
//                       topLeft: Radius.circular(4),
//                     ),
//                   ),
//                   child: Column(children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15, top: 15,right: 2),
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "How many people do you want to hire for\nthis opening?",
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black.withOpacity(0.9)),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(left: 15, right: 20, top: 5),
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "The more openings you have, the more applications you'll need.",
//                           style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black.withOpacity(0.6)),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                         padding:
//                             const EdgeInsets.only(left: 15, top: 7, right: 15),
//                         child: Container(
//                           height: 60,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                               border: Border.all(
//                                   color: appcolors.greenishText.withOpacity(0.4),
//                                   width: 1.5),
//                               borderRadius: BorderRadius.circular(10)),
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 8.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 const Text(
//                                   "Select an option",
//                                   style: TextStyle(fontSize: 18),
//                                 ),
//                                 Align(
//                                   //  alignment: Align,
//                                   child: Padding(
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
//                                             Icons.expand_more,color: appcolors.greenishText,
//                                           )),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         )),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 15, top: 40),
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "How quickly do you need to hire?",
//                           style: TextStyle(
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black.withOpacity(0.9)),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding:
//                           const EdgeInsets.only(left: 15, right: 20, top: 8),
//                       child: Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           "If you need someone fast, you may need higher visibility.",
//                           style: TextStyle(
//                               fontSize: 17,
//                               color: Colors.black.withOpacity(0.6)),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                         padding:
//                             const EdgeInsets.only(left: 15, top: 8, right: 15),
//                         child: Container(
//                           height: 60,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                               border: Border.all(
//                                   color: appcolors.greenishText.withOpacity(0.4),
//                                   width: 1.5),
//                               borderRadius: BorderRadius.circular(10)),
//                           child: Padding(
//                             padding: const EdgeInsets.only(left: 8.0),
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 const Text(
//                                   "Select an option",
//                                   style: TextStyle(fontSize: 18),
//                                 ),
//                                 Align(
//                                   //  alignment: Align,
//                                   child: Padding(
//                                     padding: const EdgeInsets.only(right: 8.0),
//                                     child: DropdownButtonHideUnderline(
//                                       child: DropdownButton<String>(
//                                           value: dropdownvalue1,
//                                           onChanged: (value) {
//                                             setState(() {
//                                               dropdownvalue1 = value;
//                                             });
//                                           },
//                                           items: items1.map((valueitem) {
//                                             return DropdownMenuItem(
//                                                 value: valueitem,
//                                                 child: Text(valueitem));
//                                           }).toList(),
//                                           icon: const Icon(
//                                             Icons.expand_more,color: appcolors.greenishText,
//                                           )),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         )),
//                   ]),
//                 )),
//             Padding(
//               padding: const EdgeInsets.only(top: 15, left: 8, right: 0),
//               child: Container(
//                 width: double.infinity,
//                 height: 150.0,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(
//                     Radius.circular(20),
//                   ),
//                   //  border: Border.all(width: 5,color: Colors.red)
//                 ),
//                 child: Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(top: 20),
//                       child: SizedBox(
//                         height: 50,
//                         width: double.infinity,
//                         child: Padding(
//                           padding:  const EdgeInsets.only(
//                             left: 15,
//                             right: 15,
//                           ),
//                           child: Elevatedbutton(
//                             'Save and continue',
//                               (){
//
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(builder: (context) => const Compensation()),
//                                 );
//                               }
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Padding(
//                       padding:
//                           EdgeInsets.only(top: 10, left: 15, right: 15),
//                       child: Back(),
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
// }
