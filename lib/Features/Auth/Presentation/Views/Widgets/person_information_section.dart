

import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/company_name_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/country_name_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/email_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/job_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/name_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/password_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/phone_number_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_with_suffix_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonInformationSection extends StatelessWidget {
  const PersonInformationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController=TextEditingController();
    TextEditingController passController=TextEditingController();
    TextEditingController firstNameController=TextEditingController();
    TextEditingController lastNameController=TextEditingController();
    TextEditingController phoneController=TextEditingController();
    TextEditingController confirmController=TextEditingController();
    TextEditingController salutationController=TextEditingController();
    TextEditingController companyController=TextEditingController();


    GlobalKey<FormState> formKey = GlobalKey();

    return    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        const SizedBox(height: 24,),
         NameSection(firstNameController: firstNameController
           , lastNameController: lastNameController,),
        const SizedBox(height: 24,),
         EmailSection(controller: emailController,),
        const SizedBox(height: 24,),
         PasswordSection(controller: passController, confirmController: confirmController,),
        const SizedBox(height: 24,),
         JobSection(controller: salutationController,),
        const SizedBox(height: 24,),
         CompanyNameSection(controller: companyController,),
        const SizedBox(height: 24,),
         PhoneNumberSection(onChanged: (String t) {  }, controller: phoneController,),
        const SizedBox(height: 24,),
        const CountryNameSection()
      ],
    );
  }
}
