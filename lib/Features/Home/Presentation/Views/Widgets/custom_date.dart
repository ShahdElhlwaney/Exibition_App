


import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomDate extends StatelessWidget {
  const CustomDate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 22,left: 1),
          child: Image.asset(Assets.boxDate),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text('27 Nov',style: Styles.textStyle14.copyWith(
              color: ColorsApp.blackColor,
            fontWeight: FontWeight.w500
          )
            ,),
        )
      ],
    );
  }
}