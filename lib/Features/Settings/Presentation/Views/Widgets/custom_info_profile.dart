


import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomInfoProfile extends StatelessWidget {
  const CustomInfoProfile({Key? key, required this.text, required this.onTap}) : super(key: key);
  final String text;
  final void Function()onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 48,
      decoration: BoxDecoration(
        border: Border.symmetric(horizontal: BorderSide(
            color: ColorsApp.borderColor
        )),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,style: Styles.textStyle14.copyWith(
              color: ColorsApp.blackColor
          ),),
          GestureDetector(
              onTap: onTap,
              child: Icon(Icons.arrow_forward_ios,size: 20,))
        ],
      ),
    );
  }
}