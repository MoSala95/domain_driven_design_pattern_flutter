import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'image_picker_dialog.dart';
 import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

class ImagePickerHandler {
  late ImagePickerDialog imagePicker;
  late AnimationController _controller;
  late ImagePickerListener _listener;

  ImagePickerHandler(this._listener, this._controller);

  openCamera() async {
    imagePicker.dismissDialog();
    var image = await ImagePicker.platform.pickImage(source: ImageSource.camera);
    cropImage(image!);

  }

  openGallery() async {
    imagePicker.dismissDialog();
    var image = await ImagePicker.platform.pickImage(source: ImageSource.gallery);
    cropImage(image!);

  }

  void init() {
    imagePicker = new ImagePickerDialog(this, _controller);
    imagePicker.initState();
  }

  Future cropImage(PickedFile image) async {

    File? croppedFile = await ImageCropper.cropImage(
        sourcePath: image.path,

        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: Colors.deepOrange,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false),

    ).catchError((value) => _listener.userImage(File(image.path)));
    print("cropped file path " +croppedFile!.path);
    print("cropped file abs path " +croppedFile.absolute.path);
    if(croppedFile==null)
      _listener.userImage(File(image.path));
    else
    _listener.userImage(croppedFile);
  }

  showDialog(BuildContext context) {
    imagePicker.getImage(context);
  }
}

abstract class ImagePickerListener {
  userImage(File _image);
}

