import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interns/Views/New_JobPost_section/GetX_class.dart';
import 'package:interns/Theme/app_Colors.dart';

class Add_Description extends StatefulWidget {
  const Add_Description({Key? key}) : super(key: key);

  @override
  State<Add_Description> createState() => _Add_DescriptionState();
}

class _Add_DescriptionState extends State<Add_Description> {
  TextEditingController DescriptionController = TextEditingController(text: 'gvgcg');
  JobPostController controller1 = Get.put(JobPostController());

  bool ForIcon = false;
  @override
  Widget build(BuildContext context) {
    print(DescriptionController.text);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: appcolors.greenishText,
          ),
        ),
        title: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: const [
              Text(
                "Description",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: SizedBox(
          height: 200,
          child: Column(
            children: [
              TextField(

                onChanged: (value) {
                  if (value.length <= 0) {
                    setState(() {
                      ForIcon = false;
                    });
                  } else {
                    setState(() {
                      ForIcon = true;
                    });
                  }
                  DescriptionController.text = value;
                  DescriptionController.selection = TextSelection.fromPosition(
                      TextPosition(offset: DescriptionController.text.length));
                  setState(() {
                    controller1.AddDescriptionVal(DescriptionController.text);
                  });
                },
                controller: DescriptionController,
                textAlign: TextAlign.right,

                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: ForIcon
                      ? IconButton(
                          onPressed: () {
                            DescriptionController.clear();

                            setState(() {
                              ForIcon = false;
                            });
                          },
                          icon: const Icon(
                            Icons.close,
                            color: appcolors.greenishText,
                          ))
                      : null,
                  hintText: "Add skills and requirements you're looking for.",


                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
