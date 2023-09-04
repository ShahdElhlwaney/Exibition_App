


import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HeadPage extends StatelessWidget {
  const HeadPage({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: GestureDetector(
            onTap: (){
              GoRouter.of(context).push(AppRouter.kBottomNavView);
            },
              child: Icon(Icons.arrow_back_ios_new)),
        ),
        Text(text,style: Styles.textStyle16.copyWith(
            color: ColorsApp.blackColor,
            fontWeight: FontWeight.w600
        ),),
        Icon(FontAwesomeIcons.solidBell,color: ColorsApp.blackColor,),
      ],
    );
  }
}
