// ignore_for_file: prefer_const_literals_to_create_immutables, unnecessary_new, prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dotted_border/dotted_border.dart';

class Gallery extends StatefulWidget {
  //static const routeName = "gallery";
  @override
  _GalleryState createState() => new _GalleryState();
}
class _GalleryState extends State<Gallery> {
  File? _image = null;
  final _picker = ImagePicker();
  Future getImage() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    setState(
          () {
        if (image != null) {
          _image = File(image.path);
        } else {
          print('No image selected.');
        }
      },
    );
  }

  List<Widget> _cardList = [];
  void _addCardWidget() {
    setState(() {
      _cardList.add(_card());
    });
  }

  Widget _card() {
    return _image == null
        ? new IconButton(
      icon: Icon(Icons.add_box_outlined),
      color: Colors.blue,
      iconSize: 100.0,
      onPressed: () {
        getImage();
      },
    )
        : Stack(
      children: <Widget>[
        Container(
          width: 60,
          height: 60,
          child: Image.file((_image) as File),
        ),
        Positioned(
          right: 5.0,
          child: InkWell(
            child: Icon(
              Icons.remove_circle,
              size: 30,
              color: Colors.red,
            ),
            // This is where the _image value sets to null on tap of the red circle icon
            onTap: () {
              setState(
                    () {
                  _image = null as File;
                },
              );
            },
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Image Picker Example'),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.3,
            width: double.infinity,
            child: _cardList.isEmpty
                ? Center(
                child: Text("No Certificates !",
                    style: TextStyle(fontSize: 20)))
                : ListView.builder(
              itemCount: _cardList.length,
              itemBuilder: (BuildContext context, int index) {
                return _cardList[index];
              },
            ),
          ),
          InkWell(
            splashColor: Colors.green,
            onTap: _addCardWidget,
            child: DottedBorder(
              dashPattern: [6, 3, 2, 3],
              color: Colors.amber,
              strokeWidth: 2,
              child: Container(
                  height: 35,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Add Certificate",
                          style: TextStyle(color: Colors.amber, fontSize: 16)),
                      Icon(Icons.add, color: Colors.amber)
                    ],
                  )),
            ),
          ),
        ],
      ),

      // Thi
    );
  }
}