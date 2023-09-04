




import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/company_name_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/email_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/job_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/name_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/phone_number_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_row.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/Settings/Presentation/Views/Widgets/image_profile_with_camera.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountInformationBody extends StatefulWidget {
  const AccountInformationBody({Key? key}) : super(key: key);

  @override
  State<AccountInformationBody> createState() => _AccountInformationBodyState();

}

class _AccountInformationBodyState extends State<AccountInformationBody> {
  TextEditingController controllerPhoneNumber =TextEditingController();
  TextEditingController controllerEmail= TextEditingController();
  TextEditingController firstNameController= TextEditingController();
  TextEditingController lastNameController= TextEditingController();
  TextEditingController jobTitleController= TextEditingController();
  TextEditingController companyNameController= TextEditingController();


  @override
  void initState() {
    super.initState();
    controllerPhoneNumber.text='01147714739';
    controllerEmail.text='Loaahany209@gmail.com';
    firstNameController.text='Loaa';
    lastNameController.text='Hany';
    jobTitleController.text='Designer';
    companyNameController.text='ITD';
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            PersonHeadSection(),
            SizedBox(height: 16,),

            HeadRow(head: 'Account Information'),
            SizedBox(height: 16,),
            ImageProfileWithCamera(),
            SizedBox(height: 24,),
            NameSection(firstNameController: firstNameController, lastNameController: lastNameController,),
            SizedBox(height: 24,),
            EmailSection(controller: controllerEmail,),
            SizedBox(height: 24,),
            JobSection(controller: jobTitleController,),
            SizedBox(height: 24,),
           CompanyNameSection(controller: companyNameController,),
            SizedBox(height: 24,),
            PhoneNumberSection(onChanged: (String number ) {;
            }, controller: controllerPhoneNumber,),
            SizedBox(height: 40,),
            Button(text: 'Update', onPressed: () {  },)


          ],
        ),
      ),
    );
  }
}


