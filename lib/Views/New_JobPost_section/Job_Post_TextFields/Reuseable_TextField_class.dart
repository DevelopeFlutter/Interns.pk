// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../GetX_class.dart';
// import 'package:interns/Theme/app_Colors.dart';
//
// class ReuseableTextFiled extends StatefulWidget {
//   const ReuseableTextFiled({Key? key}) : super(key: key);
//
//   @override
//   State<ReuseableTextFiled> createState() => _ReuseableTextFiledState();
// }
//
// class _ReuseableTextFiledState extends State<ReuseableTextFiled> {
//   TextEditingController Controller = TextEditingController();
//   JobPostController controller1 = Get.put(JobPostController());
//   bool ForIcon = false;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 200,
//       child: Column(
//         children: [
//           TextField(
//             onChanged: (value) {
//               if (value.length <= 0) {
//                 setState(() {
//                   ForIcon = false;
//                 });
//               } else {
//                 setState(() {
//                   ForIcon = true;
//                 });
//               }
//               Controller.text = value;
//               Controller.selection = TextSelection.fromPosition(
//                   TextPosition(offset: Controller.text.length));
//               setState(() {
//                 controller1.SetVal(Controller);
//               });
//
//
//             },
//             controller: Controller,
//             //Controller,
//             decoration: InputDecoration(
//               suffixIcon: ForIcon ?IconButton(onPressed: (){
//                 Controller.clear();
//                 setState(() {
//                   ForIcon = false;
//                 });
//               }, icon: const Icon(Icons.close,color: appcolors.greenishText,)):null,
//               hintText:  "Search...",
//
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
