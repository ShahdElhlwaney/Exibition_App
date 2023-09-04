


import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomViewMyAgenda extends StatelessWidget {
  const CustomViewMyAgenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kMyAgendaView);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(color: ColorsApp.borderColor)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('View my agenda',style: Styles.textStyle15,),
            Icon(Icons.arrow_forward_ios,size: 20,)
          ],
        ),
      ),
    );
  }
}
