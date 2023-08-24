

import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class YouAre extends StatelessWidget {
  const YouAre({Key? key, required this.imageUrl, required this.text, required this.onTap, required this.color, required this.borderColor, required this.textColor}) : super(key: key);
 final String imageUrl;
 final String text;
 final void Function()onTap;
 final Color color;
 final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width:MediaQuery.of(context).size.width*.4,
        height: 172,
        decoration: BoxDecoration(
          color: color,
          border:Border.all(color:borderColor ) ,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

             Image.asset(imageUrl),
            SizedBox(height: 20,),
            Text(text,style: Styles.textStyle16.copyWith(
              color: textColor
            ),)
          ],
        ),
      ),
    );
  }
}
