




import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_first_interest.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_fourth_interest.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_second_interest.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_third_interest.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/first_row_interests.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/fourth_row_interests.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/second_row_interests.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/third_row_interests.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_row.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:flutter/material.dart';

class MyInterestsViewBody extends StatelessWidget {
  const MyInterestsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PersonHeadSection(),
          SizedBox(height: 16,),

          HeadRow(head: 'My Interests'),
          SizedBox(height: 32,),

          const CustomFirstInterest(),
          const SizedBox(height: 16,),
          const FirstRowIntersts(),
          const SizedBox(height: 16,),
          const SecondRowInterests(),
          const SizedBox(height: 16,),
          const ThirdRowInterests(),
          const SizedBox(height: 16,),
          const FourthRowInterests(),

          Spacer(),
          Button(text: 'Update', onPressed: () {  }
            ,width:MediaQuery.of(context).size.width ,)


        ],
      ),
    );
  }
}
