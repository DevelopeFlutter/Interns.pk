// ignore_for_file: use_build_context_synchronously, depend_on_referenced_packages, file_names

import 'package:flutter/material.dart';
import 'package:interns/Authentication/Controller/Edit_User_Profile_Controller.dart';
import 'package:interns/Services/Auth_Services/signUp.dart';
import 'package:interns/Theme/app_Colors.dart';
import 'package:get/get.dart';
import '../../Authentication/Controller/Auth_Controller.dart';
import '../../utils/loader.dart';
import '../../utils/showMessage.dart';
import 'package:intl/intl.dart';

class EditMyProfile extends StatefulWidget {
  const EditMyProfile({Key? key}) : super(key: key);
  @override
  State<EditMyProfile> createState() => _EditMyProfileState();
}

DateTime? selectedDate;

class _EditMyProfileState extends State<EditMyProfile> {
  EditProfileController getdata = Get.put(EditProfileController());
  AuthController controller = Get.put(AuthController());
  Authcontroller getemailname = Get.put(Authcontroller());

  Future _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(1980),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        dateController
          ..text = DateFormat.yMMMd().format(selectedDate!)
          ..selection = TextSelection.fromPosition(TextPosition(
              offset: dateController.text.length,
              affinity: TextAffinity.upstream));
        final date = DateFormat.yMd().format(selectedDate!);
        getdata.birthDateValue(date);
      });
    }
  }

  @override
  void initState() {
    languageChoice(_user);
    super.initState();
  }
  String _user = 'Male';
  dynamic languageChoice(value) {
    setState(() {
      _user = value;
      getdata.genderVal(_user);
    });
  }
  TextEditingController lastController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  void submitUpdateData() async {
    // FocusScope.of(context).unfocus();
    try {
      PopupLoader.show();
      var authResponse = await updateProfile(
          getemailname.data['_id'],
          getdata.firstname,
          getdata.lastname,
          getdata.dateofBirth,
          getdata.gender,
          getdata.mobilenumber,
          getdata.address,
          getdata.country,
          getdata.city);
      PopupLoader.hide();
      if (authResponse["content"]['status'] == 200) {
        ShowMessage().showMessage(context, 'Successfully JobPost');
        // Navigator.push(context,
        //     MaterialPageRoute(builder:(context) => const homePageView()));

      } else {
        ShowMessage().showErrorMessage(context, 'Some Error');
        print("message");
      }
    } catch (e) {
      PopupLoader.hide();
      print(['SubmitLogin Exception:', e.toString()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    // print('${ getemailname.data['_id']
    //     } This is the userEmail');
    // emailController.text=getemailname.data['data'];
    return Scaffold(
        appBar: AppBar(
            backgroundColor: appcolors.greenishText,
            leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 26,
                )),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text(
                    "Edit My Profile",
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            )),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextFormField(
                  controller: firstnameController,
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                  ),
                  onChanged: (value) {
                    setState(() {
                      getdata.firstnameValue(value);
                    });

                    // firstnameController= Firstname;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    onChanged: (value) {
                      getdata.lastnameVal(lastController.text);
                    },
                    controller: lastController,
                    decoration: const InputDecoration(
                      labelText: 'Last Name',
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    readOnly: true,
                    onChanged: (value) {
                      getdata.birthDateValue(dateController.text);
                    },
                    onTap: () {
                      _selectDate(context);
                    },
                    controller: dateController,
                    decoration: const InputDecoration(
                      labelText: 'Date of birth',
                    )),
                const SizedBox(
                  height: 15,
                ),
                const Align(
                    alignment: Alignment.centerLeft, child: Text("Gender")),
                Row(children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Transform.scale(
                        scale: 1.2,
                        child: Radio(
                            fillColor: MaterialStateColor.resolveWith(
                                (states) => appcolors.greenishText),
                            value: 'Male',
                            groupValue: _user,
                            onChanged: languageChoice),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10, left: 5),
                      child: Text("Male"),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Transform.scale(
                            scale: 1.2,
                            child: Radio(
                                fillColor: MaterialStateColor.resolveWith(
                                    (states) => appcolors.greenishText),
                                value: 'Female',
                                groupValue: _user,
                                onChanged: languageChoice
                                // (
                                //   value,
                                // ) {
                                //   print(
                                //       "$_result this is the Result in the Edit  Profile Female");
                                //   setState(() {
                                //     _result = value;
                                //
                                //     // controller1.WorkPlaceTypeValue(Onsite);
                                //   });
                                // },
                                ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 5),
                          child: Text("Female"),
                        )
                      ],
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    readOnly: true,
                    // controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),              initialValue: '${getemailname.data?['data']['Email']??''}',
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    onChanged: (value) {
                      getdata.mobileVal(mobileController.text);
                    },
                    controller: mobileController,
                    decoration: const InputDecoration(
                      labelText: 'Mobile',
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    onChanged: (value) {
                      getdata.addressVal(addressController.text);
                    },
                    controller: addressController,
                    decoration: const InputDecoration(
                      labelText: 'Address',
                    )),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                    onChanged: (value) {
                      getdata.countryVal(countryController.text);
                    },
                    controller: countryController,
                    decoration: const InputDecoration(
                      labelText: 'Country',
                    )),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                    onChanged: (value) {
                      getdata.cityVal(cityController);
                    },
                    controller: cityController,
                    decoration: const InputDecoration(
                      labelText: 'City',
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, bottom: 20, top: 5),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(appcolors.greenishText),
                      ),
                      onPressed: () {
                        submitUpdateData();
                      },
                      child: const Text(
                        'Save',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
