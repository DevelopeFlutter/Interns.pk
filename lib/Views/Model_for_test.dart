// import 'package:flutter/material.dart';
//
// // To parse this JSON data, do
// //
// //     final welcome = welcomeFromJson(jsonString);
//
// import 'dart:convert';
//
// Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));
//
// String welcomeToJson(Welcome data) => json.encode(data.toJson());
//
// class Welcome {
//   Welcome({
//     this.status,
//     this.message,
//    required this.data,
//   });
//
//   int? status;
//   String? message;
//   List<Datum> data;
//
//   factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
//     status: json["status"],
//     message: json["message"],
//     data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "status": status,
//     "message": message,
//     "data": List<dynamic>.from(data.map((x) => x.toJson())),
//   };
// }
//
// class Datum {
//   Datum({
//     required this.id,
//     required this.companyName,
//     required this.jobTitle,
//     required this.jobLocation,
//     required this.description,
//     required this.workPlacetype,
//     required this.jobType,
//     required this.v,
//   });
//
//   String id;
//   String companyName;
//   String jobTitle;
//   String jobLocation;
//   String description;
//   String workPlacetype;
//   String jobType;
//   int v;
//
//   factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//     id: json["_id"],
//     companyName: json["company_name"],
//     jobTitle: json["job_title"],
//     jobLocation: json["job_location"],
//     description: json["description"],
//     workPlacetype: json["work_placetype"],
//     jobType: json["job_type"],
//     v: json["__v"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "_id": id,
//     "company_name": companyName,
//     "job_title": jobTitle,
//     "job_location": jobLocation,
//     "description": description,
//     "work_placetype": workPlacetype,
//     "job_type": jobType,
//     "__v": v,
//   };
// }

 var q= {
"Name":"Usman",
"Email":"zxcppb@gmail.com",
"Password":"123456",
"last_name":"Ali",
"gender":"Male",
"mobile_Number":"",
"adress":"Patttoki",
"country":"Pakistan",
"city":"Sattoki"

};