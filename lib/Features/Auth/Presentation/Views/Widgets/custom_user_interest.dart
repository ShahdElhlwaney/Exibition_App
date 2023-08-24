



import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomUserInteresrt extends StatelessWidget {
  const CustomUserInteresrt({Key? key, required this.width
    , required this.text
    , required this.onChanged, required this.color, required this.borderColor, required this.icon}) : super(key: key);
         final double width;
          final String text;
          final void Function() onChanged;
          final Color color,borderColor;
          final IconData icon;



  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: width,
      height: 40,
      child: TextButton(

        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(text,style: Styles.textStyle14.copyWith(
                color: ColorsApp.blackColor
            ),),
            Icon(icon,color: ColorsApp.blackColor,)
          ],
        ),
        style: TextButton.styleFrom(
          side: BorderSide(color:borderColor),
          backgroundColor:color ,
        ), onPressed:onChanged,

      ),
    );

  }
}
