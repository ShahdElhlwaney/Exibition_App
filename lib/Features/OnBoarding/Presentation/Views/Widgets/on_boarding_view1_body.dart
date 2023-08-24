


import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Core/Widgets/head_section.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/arabian.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/image_screen.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/Utils/assets.dart';

class onBoardingView1Body extends StatelessWidget {
  const onBoardingView1Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ImageScreen(imageUrl:Assets.onBoarding1),
             const Padding(
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
                 Text('A Virtual World Of\nThe Greatest\nTechnology',
                   style: Styles.textStyle32,
                 ),
                 SizedBox(height: 8,),
                 Text('Find Out More About What’s On View. There’s\nAlways Something New'
                     ', Whether You Visit In\nPerson Or Explore Online.',style: Styles.textStyle14,),
                 SizedBox(height: 104,)
               ],
           ),
             ),


      ],
    );
  }
}
