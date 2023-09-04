

import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';

class CustomImageProfile extends StatelessWidget {
  const CustomImageProfile({Key? key, required this.heightWidth}) : super(key: key);
  final double heightWidth;
  @override
  Widget build(BuildContext context) {
    return Container(
        width:heightWidth+10 ,
        height: heightWidth+10,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: ColorsApp.mainColor),
          shape: BoxShape.circle,
        ),
        child:Center(
          child: Image.asset(Assets.profileTest,
            width: heightWidth,
            height: heightWidth,
            fit: BoxFit.contain,
          ),
        )
    );
  }
}
