import 'package:flutter/material.dart';
import 'package:interns/Views/for_test.dart';
import 'package:get/get.dart';

class ForTestWidget extends StatefulWidget {
  const ForTestWidget({Key? key}) : super(key: key);

  @override
  State<ForTestWidget> createState() => _ForTestWidgetState();
}

class _ForTestWidgetState extends State<ForTestWidget>
    with SingleTickerProviderStateMixin {
  // late AnimationController _controller;
  ModelController Modelcontroller = Get.put(ModelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
              () =>
          Modelcontroller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : ListView.builder(
              itemCount: Modelcontroller.welcome?.data.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      child: Text(
                        "${Modelcontroller.welcome?.data[index].jobType}"),
                    ),
                    Container(
                      height: 20,
                      width: 20,
                      color: Colors.amberAccent,
                    )
                  ],
                );
              }),
        ));
  }
}

