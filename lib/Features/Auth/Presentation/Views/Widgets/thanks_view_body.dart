






import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/animated_right_sign.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/thanks_text_section.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class ThanksViewBody extends StatelessWidget  {
  const ThanksViewBody({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const PersonHeadSection(),
          const Spacer(),
          const AnimatedRightSign(),
          SizedBox(height: 120,),
          const ThanksTextSection(),
          const Spacer(),
          Button(text: 'Home', onPressed: () {
                 GoRouter.of(context).push(AppRouter.kBottomNavView);
          },)

        ],
      ),
    );
  }
}
