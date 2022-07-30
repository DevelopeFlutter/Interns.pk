import 'package:flutter/material.dart';
class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Padding(
        padding: const EdgeInsets.only(top: 70,),
        child: Column(children:  [
const Padding(
  padding: EdgeInsets.only(left: 320),
),
        const Padding(
          padding: EdgeInsets.only(left: 8.0,top: 40),
          child: Text("Change Your Password",style: TextStyle(fontSize: 20),),
        ),Padding(
          padding: const EdgeInsets.only(left: 20,right:20,top: 40 ),
          child: (
          TextFormField(decoration: const InputDecoration(labelText: "Current password"),)),
        ),  Padding(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
          child: TextFormField(decoration: const InputDecoration(labelText: "New password"),
            ),
        ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20,top: 10),
            child: TextFormField(decoration: const InputDecoration(labelText: "Confirm password"),),
          ), SizedBox(height: 10,),SizedBox(
            height: 70,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 40, top: 20 ,right: 40),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Submit"),
                style: ButtonStyle(
                  shape:
                  MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ),
          ),],),
      ),
    );
  }
}
