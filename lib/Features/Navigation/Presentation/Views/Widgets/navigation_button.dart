



import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return GestureDetector(
          onTap: (){
          GoRouter.of(context).push(AppRouter.kAdvancedSearchView);
          },
          child:Container(
              alignment: Alignment.center,
              height: 40,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              decoration: BoxDecoration(
                  border: Border.all(color: ColorsApp.isPressedColor)
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Assets.map),
                  SizedBox(width: 8,),
                  Text('Advanced Search',style: Styles.textStyle11.copyWith(
                      color: ColorsApp.isPressedColor
                  ),),
                ],
              )
          )
      );

    }
  }

