
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class CameraScreen extends StatefulWidget {
  const CameraScreen({ Key? key }) : super(key: key);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  final imagePicker = ImagePicker();
  late File file;
  void imageSelectFromCamera() async{
    final image = await imagePicker.getImage(source: ImageSource.camera);
    setState(() {
      file = image as File;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TextButton(onPressed: imageSelectFromCamera, child: Text("Camera"))),
    );
  }
}