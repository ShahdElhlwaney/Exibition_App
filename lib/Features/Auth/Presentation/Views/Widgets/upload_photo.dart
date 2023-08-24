


import 'dart:io';

import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {
  XFile? img;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
       img=await ImagePicker().pickImage(source: ImageSource.gallery);
       setState(() {
       });
      },
      child: Container(
        width: 104,
        height: 104,
        decoration: BoxDecoration(
          color: ColorsApp.borderColor,
          shape: BoxShape.circle
        ),
        child:img ==null?Image.asset(Assets.camera):
        ClipRRect(
          borderRadius: BorderRadius.circular(500),
            child: Image.file(File(img!.path),fit: BoxFit.cover,))
      ),
    );
  }
}
