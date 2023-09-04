

import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({Key? key, required this.imageUrl, required this.categoryName}) : super(key: key);
   final String imageUrl;
   final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            color: ColorsApp.mainColor,
            shape: BoxShape.circle
          ),
          child: Image.asset(imageUrl,width: 40,height: 40,),
        ),
        SizedBox(height: 8,),
        Text(categoryName,style: Styles.textStyle14.copyWith(
          fontWeight: FontWeight.w600,
          color: ColorsApp.blackColor
        ),)
      ],
    );
  }
}
