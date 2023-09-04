


import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class SeeAllRow extends StatelessWidget {
  const SeeAllRow({Key? key, required this.text, required this.onTap}) : super(key: key);
 final String text;
 final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text,style:Styles.textStyle16.copyWith(
          color: ColorsApp.blackColor,
          fontWeight: FontWeight.w700
        )),
        GestureDetector(
          onTap:onTap ,
          child: Text('See all',style: Styles.textStyle14.copyWith(
            color: ColorsApp.mainColor
          ),),
        )
      ],
    );
  }
}
