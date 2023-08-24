

import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/head_text.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/you_are_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class WhoAreYouViewBody extends StatelessWidget {
  const WhoAreYouViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
         const PersonHeadSection(),
          const SizedBox(height: 25,),
          const HeadText(text: 'Who are you?',),
          const SizedBox(height: 23,),
          const YouAreRow(),
          const Spacer(),
          Button(text: 'Next', onPressed: () {
            GoRouter.of(context).push(AppRouter.kCreateAccountView);
          },)
        ],
      ),
    );
  }
}
