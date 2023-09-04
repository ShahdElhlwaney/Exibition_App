


import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/button_with_border.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SuccessInvitingViewBody extends StatelessWidget {
  const SuccessInvitingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const PersonHeadSection(),
         SizedBox(
           height:
           MediaQuery.of(context).size.height*.4,
        ),
          Text('Visitors has been invited'
            ,style: Styles.textStyle20.copyWith(
              color: ColorsApp.blackColor
            ),),
          Text('Successfully'
            ,style: Styles.textStyle20.copyWith(
                color: ColorsApp.blackColor
            ),),
          Spacer(),
          ButtonWithBorder(onTap: () {
            GoRouter.of(context).push(AppRouter.kWhoAreYouView);
          },)

        ],
      ),
    );
  }
}
