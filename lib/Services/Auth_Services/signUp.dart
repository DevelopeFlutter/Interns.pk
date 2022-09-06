import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:interns/Authentication/Controller/Job_Get_Controller.dart';
import 'package:interns/Network/API_manger.dart';
import 'package:interns/Network/APIs_call.dart';
import 'package:get/get.dart';
import 'package:interns/Views/for_Test_Model.dart';
import 'package:interns/utils/loader.dart';

import '../../Authentication/Controller/Auth_Controller.dart';

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
 Login(String Email, String Password) async {
    Authcontroller getSignInData = Get.put(Authcontroller());
   // print("This is Called");
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
         getSignInData.setData(_content['userEmail']);
      getSignInData.SimplePrint();
      print('${getSignInData.data['_id']}This is the Id in the Login ');


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
    var response = await API().post(api_manager.JOBPOST, Data);
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

  getData() async {
  final JobsList getTheJob = Get.put(JobsList());
  var response = await API().get(api_manager.GETJOB);
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
     print('$data This is Response of getData');
    getTheJob.setData(data['message'], data['status'], data['data']);
    print("Get Function is Called");
    return data;
  }
}

Future DeleteJob(
  String id,
) async {
  var _content;
  bool _error = false;
  String _errorMessage = "Unable to process request, please try later!";
  try {
    var response = await API().Delete(api_manager.REMOVEJOB, id);
    if (response.statusCode == 200) {
      // getData();
      // print(response.statusCode);
      _error = false;
      _content = jsonDecode(response.body);
      print('${jsonDecode(response.body)}');
    } else {
      _error = true;
      _content = jsonDecode(response.body);
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

Future userProfile(
  String addSummary,
  String skills,
  String education,
  String workHistory,
  String projects,
  String languages,
) async {
  var _content;
  bool _error = false;
  String _errorMessage = "Unable to process request, please try later!";
  try {
    var Data =
        "add_summary=$addSummary&skills=$skills&education=$education&work_history=$workHistory&projects=$projects&languages=$languages";
    print(Data);
    var response = await API().Profile(api_manager.USERPROFILE, Data);
    if (response.statusCode == 200) {
      print(response.statusCode);
      _error = false;
      _content = jsonDecode(response.body);

      print(
          '${jsonDecode(response.body)}This is the response of User Profile  ');
    } else {
      _error = true;
      _content = jsonDecode(response.body);
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

Future userFeedBack(
  String Name,
  String Email,
  String Password,
) async {
  var _content;
  bool _error = false;
  String _errorMessage = "Unable to process request, please try later!";
  try {
    var Data = "add_summary=$Name&skills=$Email&education=$Password";
    print(Data);
    var response = await API().feedBack(api_manager.FEEDBACK, Data);
    if (response.statusCode == 200) {
      print(response.statusCode);
      _error = false;
      _content = jsonDecode(response.body);

      print(
          '${jsonDecode(response.body)}This is the response of User Feedback  ');
    } else {
      _error = true;
      _content = jsonDecode(response.body);
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
