import 'dart:convert';
import 'package:interns/Network/API_manger.dart';
import 'package:interns/Network/APIs_call.dart';
Future signup(
String Name, String Email, String Password, String ConfirmPassword)async{
  var _content;
  bool _error = false;
  String _errorMessage ="Unable to process request, please try later!";
  try {
    var Data = "Name=$Name&Email=$Email&Password=$Password&ConfirmPassword=$ConfirmPassword";
    print(Data);
    var response = await API().post(api_manger.SIGN_UP, Data);
    if(response.statusCode == 200){
      print(response.statusCode);
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

  //Login Function.....
  Future Login(
     String Email, String Password)async{
  var _content;
  bool _error = false;
  String _errorMessage = "Unable to process request, please try later!";
  try {
    var Data1 =
        "Email=$Email&Password=$Password";
    print(Data1);
    var response = await API().post(api_manger.Login, Data1);
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
