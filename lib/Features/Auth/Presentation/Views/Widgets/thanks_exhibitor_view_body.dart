


import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/animated_right_sign.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ThanksExhibitorViewBody extends StatelessWidget {
  const ThanksExhibitorViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const PersonHeadSection(),
          SizedBox(
            height: 60,
          ) ,
          const AnimatedRightSign(),
          const SizedBox(height: 100,),
          Text('Thanks for your registration',style: Styles.textStyle20.copyWith(
              color: ColorsApp.blackColor)),
          const Spacer(),
          Button(text: 'View My QR Code', onPressed: () {

           GoRouter.of(context).push(AppRouter.kQrCodeView);
          },),
        //  const SizedBox(height: 24,),

        ],
      ),
    );
  }
}
