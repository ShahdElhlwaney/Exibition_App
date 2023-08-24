

import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/company_name_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/country_name_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/email_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/job_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/name_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/password_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/phone_number_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/text_field_with_suffix_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PersonInformationSection extends StatelessWidget {
  const PersonInformationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();

    return    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Salutation',style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        const SizedBox(height: 8,),
        TextFieldWithSuffix(
          onChanged: (String ) {  }, icon:
        const Icon(FontAwesomeIcons.angleDown), obscureText: false, onTap: () {  }
           ,validator: (String?value ) {

          },),
        const SizedBox(height: 24,),
        const NameSection(),
        const SizedBox(height: 24,),
        const EmailSection(),
        const SizedBox(height: 24,),
        const PasswordSection(),
        const SizedBox(height: 24,),
        const JobSection(),
        const SizedBox(height: 24,),
        const CompanyNameSection(),
        const SizedBox(height: 24,),
        const PhoneNumberSection(),
        const SizedBox(height: 24,),
        const CountryNameSection()
      ],
    );
  }
}
