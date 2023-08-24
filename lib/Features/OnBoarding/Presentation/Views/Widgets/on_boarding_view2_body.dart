


import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Core/Widgets/head_section.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/arabian.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/image_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingView2Body extends StatelessWidget {
  const OnBoardingView2Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageScreen(imageUrl:Assets.onBoarding2),
          Padding(
          padding: EdgeInsets.only(left: 24,top: 24),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              HeadSection(crossAxisAlignment: CrossAxisAlignment.start
                , mainAxisAlignment: MainAxisAlignment.start,),
              SizedBox(height: 27.73,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Arabian(),
                  SizedBox(width:24,)
                ],
              ),
              Spacer(),
              Text('First: You Need To\nCreate Account\nEasily',
                style: Styles.textStyle32,
              ),
              SizedBox(height: 8,),
              Text('Signup To Create New Account So That You\nCan Get Your Ticket And Attend Any Event',style: Styles.textStyle14,),
              SizedBox(height: 104,)
            ],
          ),
        ),


      ],
    );
  }
}
