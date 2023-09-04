



import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomNotificationButton extends StatelessWidget {
  const CustomNotificationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kNotificationsView);
      },
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: ColorsApp.borderColor)
        ),
        child: Icon(FontAwesomeIcons.solidBell,color: ColorsApp.blackColor,),
      ),
    );
  }
}
