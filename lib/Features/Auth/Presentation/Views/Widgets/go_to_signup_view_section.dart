



import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoToSignUpViewSection extends StatelessWidget {
  const GoToSignUpViewSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don’t have an account?',style: Styles.textStyle14.copyWith(
            color: ColorsApp.blackColor
        ),),
        GestureDetector(
          onTap: (){
            GoRouter.of(context).push(AppRouter.kCreateAccountView);
          },
          child: Text(' Signup',style: Styles.textStyle14.copyWith(
              color: ColorsApp.mainColor
          ),),
        )
      ],
    );
  }
}
