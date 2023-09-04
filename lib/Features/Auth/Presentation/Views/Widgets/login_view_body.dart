



import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/check_box_login_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/email_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/go_to_signup_view_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/head_text.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/password_sub_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();
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
             EmailSection(controller: controller,),
            const SizedBox(height: 24,),

            PasswordSubSection(),
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
