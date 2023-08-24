


import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Core/Widgets/head_section.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/arabian.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/image_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingView4Body extends StatelessWidget {
  const OnBoardingView4Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageScreen(imageUrl: Assets.onBoarding4,),
        const Padding(
          padding: EdgeInsets.only(left: 24, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeadSection(crossAxisAlignment: CrossAxisAlignment.start
                , mainAxisAlignment: MainAxisAlignment.start,),
              SizedBox(height: 27.73,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Arabian(),
                  SizedBox(width: 24,)
                ],
              ),
              Spacer(),
              Text('Attend Sessions\NAnd Meet\nSpeakers ',
                style: Styles.textStyle32,
              ),
              SizedBox(height: 8,),
              Text('Check The Sessions That You Are Interested And '
                  'Join Easily Through The App', style: Styles.textStyle14,),
              SizedBox(height: 104,)
            ],
          ),
        ),
         Align(
          alignment: Alignment.bottomRight,
            child: Padding(
              padding: EdgeInsets.only(bottom: 44,right: 24),
              child: Button(text: 'Get Started'
                , onPressed: () {
                GoRouter.of(context).push(AppRouter.kWhoAreYouView);
                },height:40 ,
                width:142 ,),
            ))

      ],
    );
  }
}