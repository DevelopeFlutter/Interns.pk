// ignore_for_file: depend_on_referenced_packages, prefer_typing_uninitialized_variables, duplicate_ignore, non_constant_identifier_names

import 'dart:convert';
import 'package:interns/Authentication/Controller/Job_Get_Controller.dart';
import 'package:interns/Network/API_manger.dart';
import 'package:interns/Network/APIs_call.dart';
import 'package:get/get.dart';
import 'package:interns/utils/loader.dart';
import '../../Authentication/Controller/Auth_Controller.dart';

Future signup(
   String lastName,
    String birthDate,
    String gender,
    String mobNumber,
    String address,
    String country,
    String city,
  String firstname,
  String email,
  String password,
) async {
  Authcontroller getSignInData = Get.put(Authcontroller());
  var content;
  bool error = false;
  String errorMessage = "Unable to process request, please try later!";
  try {
    var Data = "Name=$firstname&Email=$email&Password=$password&last_name=$lastName&birth_date=$birthDate&gender=$gender&mobile_Number=$mobNumber&address=$address&country=$country&city=$city";
    print(Data);
    var response = await API().post(ApiManager.SIGN_UP, Data);
    if (response.statusCode == 200) {
      print(response.statusCode);
      content = jsonDecode(response.body);
      getSignInData.setData(content);
      print(jsonDecode(response.body)["success"]);
    } else {
      error = true;
      content = jsonDecode(response.body)['error'];
    }
  } catch (e) {
    error = true;
    content = errorMessage;
  }
  return {
    "error": error,
    "content": content,
  };
}

//Login Function.....
login(String email, String password) async {
  Authcontroller getSignInData = Get.put(Authcontroller());
  // ignore: prefer_typing_uninitialized_variables
  var content;
  bool error = false;
  String errorMessage = "Unable to process request, please try later!";
  try {
    var data = "Email=$email&Password=$password";
    print(data);
    var response = await API().post(ApiManager.LOGIN, data);
    if (response.statusCode == 200) {
      print(response.statusCode);
      error = false;
      content = jsonDecode(response.body);
      getSignInData.setData(content['userEmail']);
    } else {
      error = true;
      content = jsonDecode(response.body)['error'];
    }
  } catch (e) {
    error = true;
    content = errorMessage;
  }
  return {
    "error": error,
    "content": content,
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
  // ignore: prefer_typing_uninitialized_variables
  var content;
  bool error = false;
  String errorMessage = "Unable to process request, please try later!";
  try {
    var data =
        "company_name=$companyName&job_title=$jobTitle&job_location=$jobLocation&description=$description&work_placetype=$workPlacetype&job_type=$jobType";
    print(data);
    var response = await API().post(ApiManager.JOBPOST, data);
    if (response.statusCode == 200) {
      print(response.statusCode);
      error = false;
      content = jsonDecode(response.body);
      print(jsonDecode(response.body)["success"]);
    } else {
      error = true;
      content = jsonDecode(response.body)['error'];
    }
  } catch (e) {
    error = true;
    content = errorMessage;
  }
  return {
    "error": error,
    "content": content,
  };
}

getData() async {
  final JobsList getTheJob = Get.put(JobsList());
  var response = await API().get(ApiManager.GETJOB);
  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    getTheJob.setData(data['message'], data['status'], data['data']);
    return data;
  }
}

Future deleteJob(
  String id,
) async {
  JobsList getdatacontroller = Get.find<JobsList>();
  // ignore: prefer_typing_uninitialized_variables
  var content;
  bool error = false;
  String errorMessage = "Unable to process request, please try later!";
  try {
    var response = await API().Delete(ApiManager.REMOVEJOB, id);
    if (response.statusCode == 200) {
      // getData();
      PopupLoader.show();
      try {
        var authResponse = await getData();
        if (authResponse['status'] == 200) {
          PopupLoader.hide();
        } else {
          print("Status code is not equal to 200");
        }
      } catch (e) {
        print("");
      }
      // print(response.statusCode);
      error = false;
      content = jsonDecode(response.body);
      print('${jsonDecode(response.body)}');
    } else {
      error = true;
      content = jsonDecode(response.body);
    }
  } catch (e) {
    error = true;
    content = errorMessage;
  }
  return {
    "error": error,
    "content": content,
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
  // ignore: prefer_typing_uninitialized_variables
  var content;
  bool error = false;
  String errorMessage = "Unable to process request, please try later!";
  try {
    var data =
        "add_summary=$addSummary&skills=$skills&education=$education&work_history=$workHistory&projects=$projects&languages=$languages";
    print(data);
    var response = await API().Profile(ApiManager.USERPROFILE, data);
    if (response.statusCode == 200) {
      print(response.statusCode);
      error = false;
      content = jsonDecode(response.body);
    } else {
      error = true;
      content = jsonDecode(response.body);
    }
  } catch (e) {
    error = true;
    content = errorMessage;
  }
  return {
    "error": error,
    "content": content,
  };
}

Future userFeedBack(
  String name,
  String email,
  String message,
) async {
  // ignore: prefer_typing_uninitialized_variables
  var content;
  bool error = false;
  String errorMessage = "Unable to process request, please try later!";
  try {
    var data = "Name=$name&Email=$email&Password=$message";
    print(data);
    var response = await API().feedBack(ApiManager.FEEDBACK, data);
    if (response.statusCode == 200) {
      print(response.statusCode);
      error = false;
      content = jsonDecode(response.body);

      print(jsonDecode(response.body));
    } else {
      error = true;
      content = jsonDecode(response.body);
    }
  } catch (e) {
    error = true;
    content = errorMessage;
  }
  return {
    "error": error,
    "content": content,
  };
}

Future updateProfile(
    String id,
  String firstName,
  String lastName,
  String birthDate,
  String gender,
  String mobNumber,
  String address,
  String country,
  String city,
) async {
  // ignore: prefer_typing_uninitialized_variables
  var content;
  bool error = false;
  String errorMessage = "Unable to process request, please try later!";
  try {
    var data =
        "first_name=$firstName&last_name=$lastName&birth_date=$birthDate&gender=$gender&mobile_Number=$mobNumber&address=$address&country=$country&city=$city";
    print(data);
    var response = await API().post(ApiManager.UPDATEPROFILE, data);
    if (response.statusCode == 200) {
      print(response.statusCode);
      error = false;
      content = jsonDecode(response.body);
      print(jsonDecode(response.body)["success"]);
    } else {
      error = true;
      content = jsonDecode(response.body)['error'];
    }
  } catch (e) {
    error = true;
    content = errorMessage;
  }
  return {
    "error": error,
    "content": content,
  };
}
Future changePassword(
    String password,
    String id,
    ) async {
  var content;
  bool error = false;
  String errorMessage = "Unable to process request, please try later!";
  try {
    var data='password=$password';
    var response = await API().changePassword(ApiManager.CHANGEPASSWORD,id,data);
     print(data);
    if (response.statusCode == 200) {
      error = false;
      content = jsonDecode(response.body);
      print('${jsonDecode(response.body)}');
    } else {
      error = true;
     content = jsonDecode(response.body);
     }
  } catch (e) {
    error = true;
    content = errorMessage;
  }
  return {
    "error": error,
    "content": content,
  };

}
