





import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTime extends StatelessWidget {
  const CustomTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(Assets.calender),
        SizedBox(width: 8,),
        Text('1:30 pm - 3:00 PM',style: Styles.textStyle14.copyWith(
            color: ColorsApp.borderColor
        ),),
      ],
    );
  }
}