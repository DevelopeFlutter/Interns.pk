import 'dart:convert';

import 'package:interns/Network/API_manger.dart';
import 'package:interns/Network/APIs_call.dart';

Future signup(
String Name, String Email, String Password, String ConfirmPassword)async{
  var _content;
  bool _error = false;
  String _errorMessage = "Unable to process request, please try later!";
  try {
    var Data =
        "Name=$Name&Email=$Email&Password=$Password&ConfirmPassword=$ConfirmPassword";
    print(Data);
    var response = await API().post(api_manger.SIGN_UP, Data);
    if(response.statusCode == 200){
      print("status code is");
      print(response.statusCode);
       _content = jsonDecode(response.body);
      print(_content);


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