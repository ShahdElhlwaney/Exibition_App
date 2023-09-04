



import 'package:exibition/Core/Utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    PageController controller =PageController(
      viewportFraction: .95
    );

    return Column(
      children: [
        SizedBox(
          height: 135,
          child: PageView(

            controller: controller,
           children: [
             Image.asset(Assets.poster),
             Image.asset(Assets.poster),
             Image.asset(Assets.poster),
             Image.asset(Assets.poster),

           ],
          ),
        ),
        SizedBox(height: 8,),
        SmoothPageIndicator(
            controller: controller,  // PageController
            count:  4,
            effect:  const SlideEffect(
              spacing: 5.0,
              radius: 4.0,
              dotWidth: 29,
              dotHeight: 8.0,
              paintStyle: PaintingStyle.stroke,
              strokeWidth: 2,
              dotColor: Color(0xffDB8F6F66),
              activeDotColor: Color(0xffF2A285),

            ), // your preferred effect
            onDotClicked: (index){
            }
        ),
      ],
    );;
  }
}
