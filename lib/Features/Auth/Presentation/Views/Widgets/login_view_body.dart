



import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/check_box_login_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/custom_check_box.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/email_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/go_to_signup_view_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/head_text.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/password_sub_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/text_field_with_suffix_icon.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const PersonHeadSection(),
            const SizedBox(height: 24,),
            const HeadText(text: 'Welcome Back!',),
            const SizedBox(height: 26,),
            Image.asset(Assets.profileTest),
            const SizedBox(height: 24,),
            const EmailSection(),
            const SizedBox(height: 24,),

           const PasswordSubSection(),
            const CheckBoxLoginSection(),
            SizedBox(height: 45,),
            Button(text: 'Login', onPressed: () {
            },),
            SizedBox(height:  40,),
            GoToSignUpViewSection()

          ],
        ),
      ),
    );
  }
}
