// import 'package:flutter/material.dart';
// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:interns/Theme/app_Colors.dart';
//
// import '../Views/Button.dart';
//
// var items1 = [
//   '1',
//   '3 to 5',
//   '5 to 7',
//   '7 to 9',
//   '9 to 11',
// ];
//
// String? dropdownvalue;
//
// class NumberforOpeningthisPosition {
//   static  Dialogue(BuildContext context)  {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return StatefulBuilder(
//               builder: (context, setState) {
//                 return Dialog(
//                     shape: RoundedRectangleBorder(
//
//                     borderRadius: BorderRadius.circular(10),
//                     ),
//                 insetPadding:
//                 const EdgeInsets.all(10),
//                 backgroundColor: Colors.white,
//                     child: SizedBox(
//                       height: 325,
//                       child: Padding(
//                         padding:
//                         const EdgeInsets.only(top: 5),
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment:
//                               MainAxisAlignment
//                                   .spaceBetween,
//                               children: [
//                                 Padding(
//                                   padding:
//                                   const EdgeInsets
//                                       .only(left: 25),
//                                   child: Text(
//                                     "Edit the job post",
//                                     style: TextStyle(
//                                         fontWeight:
//                                         FontWeight
//                                             .bold,
//                                         fontSize: 18,
//                                         color: Colors
//                                             .black
//                                             .withOpacity(
//                                             0.9)),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding:
//                                   const EdgeInsets
//                                       .only(
//                                       right: 12),
//                                   child: IconButton(
//                                       onPressed: () {
//                                         Navigator.pop(
//                                             context);
//                                       },
//                                       icon: const Icon(
//                                           Icons.close)),
//                                 )
//                               ],
//                             ),
//                             const Divider(
//                               color: Colors.black54,
//                             ),
//                             const SizedBox(
//                               height: 20,
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.only(
//                                   left: 25, right: 70),
//                               child: AutoSizeText(
//                                 "How many do you want to"
//                                     " hire for this opening?",
//                                 textAlign:
//                                 TextAlign.justify,
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight:
//                                     FontWeight.bold),
//                               ),
//                             ),
//                             const Padding(
//                               padding: EdgeInsets.only(
//                                   left: 25, right: 80),
//                               child: Text(
//                                 "The more openings you have, "
//                                     "the more applications you\'ll need.",
//                                 textAlign:
//                                 TextAlign.justify,
//                                 style: TextStyle(
//                                     color:
//                                     Colors.black87),
//                               ),
//                             ),
//                             Padding(
//                                 padding:
//                                 const EdgeInsets
//                                     .only(
//                                     left: 25,
//                                     top: 7,
//                                     right: 25),
//                                 child: Container(
//                                   height: 50,
//                                   width:
//                                   double.infinity,
//                                   decoration: BoxDecoration(
//                                       border: Border.all(
//                                           color: appcolors
//                                               .greenishText
//                                               .withOpacity(
//                                               0.4),
//                                           width: 1.5),
//                                       borderRadius:
//                                       BorderRadius
//                                           .circular(
//                                           10)),
//                                   child: Padding(
//                                     padding:
//                                     const EdgeInsets
//                                         .only(
//                                         left: 8.0),
//                                     child: Row(
//                                       mainAxisAlignment:
//                                       MainAxisAlignment
//                                           .spaceBetween,
//                                       children: [
//                                         DropdownButtonHideUnderline(
//                                           child:
//                                           ButtonTheme(
//                                             alignedDropdown:
//                                             true,
//                                             child: DropdownButton<
//                                                 String>(
//                                               // isExpanded:
//                                               //     true,
//                                                 value:
//                                                 dropdownvalue,
//                                                 onChanged:
//                                                     (value) {
//                                                   setState(() {
//                                                     dropdownvalue = value;
//                                                   });
//                                                 },
//                                                 items: items1.map(
//                                                         (valueitem) {
//                                                       return DropdownMenuItem(
//                                                           value: valueitem,
//                                                           child: Padding(
//                                                             padding: const EdgeInsets.only(top: 12),
//                                                             child: Align(
//                                                               alignment: Alignment.topLeft,
//                                                               child: Text(valueitem),
//                                                             ),
//                                                           ));
//                                                     }).toList(),
//                                                 icon:
//                                                 const Padding(
//                                                   padding:
//                                                   EdgeInsets.only(left: 180),
//                                                   child:
//                                                   Icon(
//                                                     Icons.expand_more,
//                                                     color: appcolors.greenishText,
//                                                   ),
//                                                 )),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 )),
//                             const SizedBox(
//                               height: 17,
//                             ),
//                             const Divider(color: Colors.black54,),
//
//                             Padding(
//                               padding: const EdgeInsets.only(top: 10, left: 115),
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     height: 50,
//                                     width: 100,
//                                     child: Elevatedbutton('Close', () {}),
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.only(left: 8),
//                                     child: SizedBox(
//                                       height: 50,
//                                       width: 100,
//                                       child: Elevatedbutton('Upload', () {}),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ));
//               });
//         });
//     }
//   }
//
