import 'package:audio_camera_app/screen/record_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:io';

import 'package:image_picker/image_picker.dart';

class Reorder extends StatefulWidget {
  @override
  _ReorderState createState() => _ReorderState();
}

class _ReorderState extends State<Reorder> {
  Future openCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      var _image = image;
    });
  }

  Future openGallery() async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
     var _image = picture;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: FlatButton(
              onPressed: () {
                showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Card(
                        child: Container(
                          height: 400,
                         child: RecorderExample(),
                        ),
                      );
                    });
              },
              child: Container(
                child: Icon(
                  Icons.mic,
                  size: 40,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    color: HexColor('#516ca9'),
                    borderRadius: BorderRadius.circular(50)),
                width: 70,
                height: 70,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: FlatButton(
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) => CupertinoActionSheet(
                      title: const Text('Choose Options'),
                      actions: <Widget>[
                        CupertinoActionSheetAction(
                          child: const Text('Camera'),
                           onPressed:openCamera,

                        ),
                        CupertinoActionSheetAction(
                          child: const Text('Photo Library'),
                          onPressed:openGallery,
                          //     () {
                          //   Navigator.pop(context, 'Two');
                          // },
                        ),
                      ],
                      cancelButton: CupertinoActionSheetAction(
                        child: const Text('Cancel'),
                        isDefaultAction: true,
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                        },
                      )),
                );
              },
              child: Container(
                child: Icon(
                  Icons.camera_alt,
                  size: 40,
                  color: Colors.white,
                ),
                decoration: BoxDecoration(
                    color: HexColor('#516ca9'),
                    borderRadius: BorderRadius.circular(50)),
                width: 70,
                height: 70,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
