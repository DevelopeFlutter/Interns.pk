import 'dart:convert';

import 'package:interns/Network/API_manger.dart';
import 'package:interns/Network/APIs_call.dart';

Future signup(
String name, String email, String password, String confirmPassword)async{
  var _content;
  bool _error = false;
  String _errorMessage = "Unable to process request, please try later!";
  try {
    var Data =
        "name=$name&email=$email&password=$password&password_confirmation=$confirmPassword";
    print(Data);
    var response = await API().post(api_manger.SIGN_UP, Data);
    if(response.statusCode == 200){
      print(response.statusCode);
      _error = false;
      _content = jsonDecode(response.body);
      print(jsonDecode(response.body)["success"]);
    }else {
      _error = true;
      _content = jsonDecode(response.body)['error'];
    }
    }catch (e) {
    _error = true;
    _content = _errorMessage;
  }return {
    "error": _error,
    "content": _content,
  };
  }