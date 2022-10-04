// ignore_for_file: depend_on_referenced_packages, non_constant_identifier_names, file_names

import 'dart:convert';
import 'package:interns/Network/API_manger.dart';
import 'package:http/http.dart' as https;
import 'package:internet_connection_checker/internet_connection_checker.dart';
class API{
  //Post API
  Future post( apiurl,Data)async{
    if(!await _networkStatus())return Future(() {});
    try{
      return https.post(
        Uri.parse(ApiManager.BASE_URL + apiurl),
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
        Uri.parse(ApiManager.BASE_URL + apiurl),
      );
    } catch (e) {
      print(['API exception get', e.toString()]);
    }
  }
  Future Delete( apiurl,id)async{
    if(!await _networkStatus())return Future(() {});
    try{
      return https.delete(
        Uri.parse(ApiManager.BASE_URL + apiurl + id),
        body:id,
        headers:{"Content-Type": "application/x-www-form-urlencoded"},
        encoding:Encoding.getByName("utf-8"),
      );
    }catch(e){
      print(['API exception get', e.toString()]);

    }
  }
  Future Profile( apiurl,Data)async{
    if(!await _networkStatus())return Future(() {});
    try{
      return https.post(
        Uri.parse(ApiManager.BASE_URL+apiurl),
        body:Data,
        headers:{"Content-Type":"application/x-www-form-urlencoded"},
        encoding:Encoding.getByName("utf-8"),
      );
    }catch(e){
      print(['API exception get', e.toString()]);

    }
  }
  Future feedBack( apiurl,Data)async{
    if(!await _networkStatus())return Future(() {});
    try{
      return https.post(
        Uri.parse(ApiManager.BASE_URL+apiurl),
        body:Data,
        headers:{"Content-Type":"application/x-www-form-urlencoded"},
        encoding:Encoding.getByName("utf-8"),
      );
    }catch(e){
      print(['API exception get', e.toString()]);

    }
  }
  Future changePassword( apiurl,id,password)async{
    if(!await _networkStatus())return Future(() {});
    try{
      return https.put(
        Uri.parse(ApiManager.BASE_URL + apiurl + id),

        body:password,
        headers:{"Content-Type": "application/x-www-form-urlencoded"},
        encoding:Encoding.getByName("utf-8"),
      );
    }catch(e){
      print(['API exception get', e.toString()]);

    }
  }
  Future upDatePost( apiurl,id,data)async{
    if(!await _networkStatus())return Future(() {});
    try{
      return https.put(
        Uri.parse(ApiManager.BASE_URL + apiurl + id),

        body:data,
        headers:{"Content-Type": "application/x-www-form-urlencoded"},
        encoding:Encoding.getByName("utf-8"),
      );
    }catch(e){
      print(['API exception get', e.toString()]);

    }
  }
  }

