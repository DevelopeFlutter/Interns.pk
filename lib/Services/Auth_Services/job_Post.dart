// import 'dart:convert';
// import 'package:interns/Network/API_manger.dart';
// import 'package:interns/Network/APIs_call.dart';
//
// Future jobPost(String Email, String Password) async {
//   var _content;
//   bool _error = false;
//   String _errorMessage = "Unable to process request, please try later!";
//   try {
//     var Data1 =
//         "companyName=$companyName&job_title=$job_title&adress$adress&skills$Flutter&number_of_employees$number_of_employees&time_duration$time_duration&salary_package$salary_package&requirements$requirements";
//     print(Data1);
//     var response = await API().post(api_manger.Login, Data1);
//     if (response.statusCode == 200) {
//       print(response.statusCode);
//       _error = false;
//       _content = jsonDecode(response.body);
//       print(jsonDecode(response.body)["success"]);
//     } else {
//       _error = true;
//       _content = jsonDecode(response.body)['error'];
//     }
//   } catch (e) {
//     _error = true;
//     _content = _errorMessage;
//   }
//   return {
//     "error": _error,
//     "content": _content,
//   };
// }
