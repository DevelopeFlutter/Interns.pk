import 'dart:convert';
import 'package:interns/Network/API_manger.dart';
import 'package:http/http.dart' as https;
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../Authentication/Controller/Job_Get_Controller.dart';
import 'package:http/http.dart' as http;

class API{
  //Post API
  Future post( apiurl,Data)async{
    if(!await this._networkStatus())return Future(() {});
    try{
      return https.post(
        Uri.parse(api_manager.BASE_URL + apiurl),
        body:Data,
        headers:{"Content-Type": "application/x-www-form-urlencoded"},
        encoding:Encoding.getByName("utf-8"),
      );
    }catch(e){
      print(['API exception get', e.toString()]);
    }
  }
  _networkStatus() => InternetConnectionChecker().hasConnection;

  //Get Api...
  Future get(String apiurl) async {
    try {
      return  https.get(
        Uri.parse(api_manager.BASE_URL + apiurl),
      );
    } catch (e) {
      print(['API exception get', e.toString()]);
    }
  }
  Future Delete( apiurl,id)async{
    print("This is Called");
    if(!await this._networkStatus())return Future(() {});
    try{
      return https.delete(
        Uri.parse(api_manager.BASE_URL + apiurl + id),
        body:id,
        headers:{"Content-Type": "application/x-www-form-urlencoded"},
        encoding:Encoding.getByName("utf-8"),
      );
    }catch(e){
      print(['API exception get', e.toString()]);

    }
  }
  Future Profile( apiurl,Data)async{
    print("This is Called");
    if(!await this._networkStatus())return Future(() {});
    try{
      return https.post(
        Uri.parse(api_manager.BASE_URL+apiurl),
        body:Data,
        headers:{"Content-Type":"application/x-www-form-urlencoded"},
        encoding:Encoding.getByName("utf-8"),
      );
    }catch(e){
      print(['API exception get', e.toString()]);

    }
  }
  Future feedBack( apiurl,Data)async{
    print("This is Called Feedback");
    if(!await _networkStatus())return Future(() {});
    try{
      return https.post(
        Uri.parse(api_manager.BASE_URL+apiurl),
        body:Data,
        headers:{"Content-Type":"application/x-www-form-urlencoded"},
        encoding:Encoding.getByName("utf-8"),
      );
    }catch(e){
      print(['API exception get', e.toString()]);

    }
  }
  }

