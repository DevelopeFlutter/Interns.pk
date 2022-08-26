import 'dart:convert';
import 'package:interns/Authentication/Controller/Job_Get_Controller.dart';
import 'package:interns/Network/API_manger.dart';
import 'package:interns/Network/APIs_call.dart';
import 'package:get/get.dart';
import 'package:interns/utils/loader.dart';
Future signup(
    String Name, String Email, String Password, String ConfirmPassword) async {
  // ignore: prefer_typing_uninitialized_variables
  var _content;
  bool _error = false;
  String _errorMessage = "Unable to process request, please try later!";
  try {
    // ignore: non_constant_identifier_names
    var Data =
        "Name=$Name&Email=$Email&Password=$Password&ConfirmPassword=$ConfirmPassword";
    print(Data);
    var response = await API().post(api_manager.SIGN_UP, Data);
    if (response.statusCode == 200) {
      print(response.statusCode);
      _content = jsonDecode(response.body);
      print(jsonDecode(response.body)["success"]);
    } else {
      _error = true;
      _content = jsonDecode(response.body)['error'];
    }
  } catch (e) {
    _error = true;
    _content = _errorMessage;
  }
  return {
    "error": _error,
    "content": _content,
  };
}

//Login Function.....
Future Login(String Email, String Password) async {
  var _content;
  bool _error = false;
  String _errorMessage = "Unable to process request, please try later!";
  try {
    var Data1 = "Email=$Email&Password=$Password";
    print(Data1);
    var response = await API().post(api_manager.LOGIN, Data1);
    if (response.statusCode == 200) {
      print(response.statusCode);
      _error = false;
      _content = jsonDecode(response.body);
      print('$_content This is the content ');
      print(jsonDecode(response.body)["success"]);
    } else {
      _error = true;
      _content = jsonDecode(response.body)['error'];
    }
  } catch (e) {
    _error = true;
    _content = _errorMessage;
  }
  return {
    "error": _error,
    "content": _content,
  };
}

Future jobPost(
  String companyName,
  String jobTitle,
  String jobLocation,
  String description,
  workPlacetype,
  jobType,
) async {
  var _content;
  bool _error = false;
  String _errorMessage = "Unable to process request, please try later!";
  try {
    var Data =
        "company_name=$companyName&job_title=$jobTitle&job_location=$jobLocation&description=$description&work_placetype=$workPlacetype&job_type=$jobType";
    print(Data);
    var response = await API().post(api_manager.JOBPOST,Data);
    if (response.statusCode == 200) {
      print(response.statusCode);
      _error = false;
      _content = jsonDecode(response.body);
      print(jsonDecode(response.body)["success"]);
    } else {
      _error = true;
      _content = jsonDecode(response.body)['error'];
    }
  } catch (e) {
    _error = true;
    _content = _errorMessage;
  }
  return {
    "error": _error,
    "content": _content,
  };
}

class GeTJob {
  final JobsList  GetTheJob = Get.put(JobsList());
  dynamic Data;
   GetData() async {
    var response = await API().get(api_manager.GETJOB);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      GetTheJob.setData(data['message'], data['status'], data['data']);



    }
  }
}