



import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class FollowButtom extends StatelessWidget {
  const FollowButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(top: 16),
      alignment: Alignment.center,
      width: 72,
      height: 24,
      decoration: BoxDecoration(
          border: Border.all(color: ColorsApp.mainColor)
      ),
      child: Text('Follow',style: Styles.textStyle11.copyWith(
          color: ColorsApp.mainColor
      ),
      ),
    );
  }
}
