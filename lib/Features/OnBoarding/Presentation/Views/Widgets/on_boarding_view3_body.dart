

import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Core/Widgets/head_section.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/arabian.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/image_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingView3Body extends StatelessWidget {
  const OnBoardingView3Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageScreen(imageUrl: Assets.onBoarding3,),
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
              Text('Second: You Will\nGet A Qr Code\nTicket',
                style: Styles.textStyle32,
              ),
              SizedBox(height: 8,),
              Text('You Get Your Qr Ticket So That You Can Scan\n'
                  ' It On The Day Of The Event To Verify Your\n Registration',style: Styles.textStyle14,),
              SizedBox(height: 104,)
            ],
          ),
        ),


      ],
    );
  }
}