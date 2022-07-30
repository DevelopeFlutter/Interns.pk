import 'dart:convert';
import 'package:interns/Network/API_manger.dart';
import 'package:http/http.dart' as https;
import 'package:internet_connection_checker/internet_connection_checker.dart';

class API{
  //Post API
  Future post(String apiurl, var Data)async{
    if(!await this._networkStatus())return Future(() {});
    try{
      return https.post(
        Uri.parse(api_manger.BASE_URL + apiurl),
        body:Data,
        // headers:{"Content-Type": "application/x-www-form-urlencoded"},
        // encoding:Encoding.getByName("utf-8"),
      );
    }catch(e){
      print(['API exception get', e.toString()]);
    }
  }
  _networkStatus() => InternetConnectionChecker().hasConnection;
}