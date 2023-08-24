





import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/thanks_text_section.dart';
import 'package:flutter/material.dart';

class ThanksViewBody extends StatelessWidget {
  const ThanksViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const PersonHeadSection(),
          const Spacer(),
          const ThanksTextSection(),
          const Spacer(),
          Button(text: 'Home', onPressed: () {
          },)

        ],
      ),
    );
  }
}
