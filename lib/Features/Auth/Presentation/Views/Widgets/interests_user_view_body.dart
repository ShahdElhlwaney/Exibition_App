import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_first_interest.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_fourth_interest.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_second_interest.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_third_interest.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/first_row_interests.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/fourth_row_interests.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/head_text.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/second_row_interests.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/third_row_interests.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class InterestsUserViewBody extends StatefulWidget {
  @override
  State<InterestsUserViewBody> createState() => _InterestsUserViewBodyState();
}
class _InterestsUserViewBodyState extends State<InterestsUserViewBody> {
  List<bool> isActive=[
    false,false,false,false
    ,false,false,false,false
    ,false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 24,top: 24),
  child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PersonHeadSection(),
            const SizedBox(height: 25,),
            const HeadText(text: 'Select your interests'),
            const SizedBox(height: 15,),
            Text('To help us better suggestions, '
                'tell us\nwhat you’re interested in and we’ll '
                'select\nthe best relevant for you',style: Styles.textStyle16.copyWith(
              color: ColorsApp.blackColor
            ), ),
            const SizedBox(height: 32,),
            const CustomFirstInterest(),
            const SizedBox(height: 16,),
            const FirstRowIntersts(),
            const SizedBox(height: 16,),
            const SecondRowInterests(),
            const SizedBox(height: 16,),
            const ThirdRowInterests(),
            const SizedBox(height: 16,),
            const FourthRowInterests(),
            const SizedBox(height: 16,),
            const CustomSecondInterest(),
            const SizedBox(height: 16,),
            const CustomThirdInterest(),
            const SizedBox(height: 16,),
            const CustomFourthInterest(),
            const SizedBox(height: 75,),
            Button(text: 'Continue', onPressed: (){
              GoRouter.of(context).push(AppRouter.kThanksView);
            })
          ],
        ),
)
);
  }
}
