

import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key,  this.height=48,  this.width=327, required this.text, required this.onPressed}) : super(key: key);
  final double height;
  final double width;
   final String text;
   final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        style:  TextButton.styleFrom(

            backgroundColor: ColorsApp.mainColor ,
        ),
          onPressed: onPressed
          , child: Text(text,style:
      Styles.textStyle16,)),
    );
  }
}
