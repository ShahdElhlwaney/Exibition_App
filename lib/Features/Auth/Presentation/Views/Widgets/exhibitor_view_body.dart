




import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/check_box_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/head_text.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_information_section.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExhibitorViewBody extends StatelessWidget {
  const ExhibitorViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const PersonHeadSection(),
              const SizedBox(height: 24,),
              const HeadText(text: 'Please fill your data',),

              const SizedBox(height: 24,),
              const PersonInformationSection(),
              const SizedBox(height: 16,),
              const CheckBoxSection(),
              const SizedBox(height: 30,),
              Button(text: 'Confirm', onPressed: () {
                if(formKey.currentState!.validate())
                {
                  GoRouter.of(context).push(AppRouter.kThanksExhibitorView
                  );

                }
              },),


            ],
          ),
        ),
      ),
    );
  }
}
