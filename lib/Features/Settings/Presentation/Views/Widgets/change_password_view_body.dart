




import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/confirm_password.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_with_suffix_icon.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_row.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/Settings/Presentation/Views/Widgets/current_password_section.dart';
import 'package:exibition/Features/Settings/Presentation/Views/Widgets/new_password_section.dart';
import 'package:flutter/material.dart';

class ChangePasswordViewBody extends StatefulWidget {
  const ChangePasswordViewBody({Key? key}) : super(key: key);

  @override
  State<ChangePasswordViewBody> createState() => _ChangePasswordViewBodyState();
}

class _ChangePasswordViewBodyState extends State<ChangePasswordViewBody> {


  String? password;

  String? passwordConfirm;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PersonHeadSection(),
            SizedBox(height: 16,),

            HeadRow(head: 'Change Password'),
            SizedBox(height: 16,),
            CurrentPasswordSection(),
            SizedBox(height: 24,),
            Divider(),
            SizedBox(height: 24,),
            NewPasswordSection(),
            SizedBox(height: 24,),

            ConfirmPassword(),
            SizedBox(height: 312,),
            Button(text: 'Update', onPressed: () {  }
              ,width: MediaQuery.of(context).size.width,)
          ],
        ),
      ),
    );
  }
}
