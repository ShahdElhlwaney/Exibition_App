



import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  const HeadText({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.arrow_back_ios_new),
        SizedBox(width: 8,),

        Text(text,style: Styles.textStyle18,),
      ],
    );
  }
}
