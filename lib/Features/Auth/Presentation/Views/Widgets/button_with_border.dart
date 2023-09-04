


import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonWithBorder extends StatelessWidget {
  const ButtonWithBorder({Key? key, required this.onTap,  this.text='Exit'}) : super(key: key);
  final void Function() onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
        return GestureDetector(
            onTap: onTap,
            child:Container(
                alignment: Alignment.center,
                height: 48,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorsApp.mainColor)
                ),
                child:Text(text,style: Styles.textStyle15.copyWith(
                    color: ColorsApp.mainColor
                ),)
            )
        );

  }
}