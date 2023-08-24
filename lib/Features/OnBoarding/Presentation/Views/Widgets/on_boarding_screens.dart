







import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view1.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view2.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view3.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/on_boarding_view4.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final controller=PageController();
class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        PageView(
          controller: controller,
          scrollDirection: Axis.horizontal,
          children: const [
            OnBoardingView1(),
            OnBoardingView2(),
            OnBoardingView3(),
            OnBoardingView4()

          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60,left: 24),
          child: SmoothPageIndicator(
              controller: controller,  // PageController
              count:  4,
              effect:  const SlideEffect(
                  spacing: 8.0,
                  radius: 4.0,
                  dotWidth: 29,
                  dotHeight: 8.0,
                  paintStyle: PaintingStyle.stroke,
                  strokeWidth: 2,
                  dotColor: Colors.grey,
                  activeDotColor: Colors.white,

              ), // your preferred effect
              onDotClicked: (index){
              }
          ),
        ),
      ],
    );





  }
}