



import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_row.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile.dart';
import 'package:exibition/Features/Settings/Presentation/Views/Widgets/custom_info_profile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyProfileViewBody extends StatelessWidget {
  const MyProfileViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              PersonHeadSection(),
              SizedBox(height: 16,),

              HeadRow(head: 'My Profile'),
              SizedBox(height: 32,),
              CustomImageProfile(heightWidth: 104),
              SizedBox(height: 16,),
              Text('Loaa Hany',style: Styles.textStyle18,),
              SizedBox(height: 4,),
              Text('Loaahany209@gmail.com',style: Styles.textStyle16.copyWith(
                  color: ColorsApp.borderColor
              ),),
              SizedBox(height: 4,),
              Text('Designer',style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w500,
                  color: ColorsApp.mainColor)),
              SizedBox(height: 32,),
             CustomInfoProfile(text: 'Account Information'
               , onTap: () {
               GoRouter.of(context)
                   .push(AppRouter.kAccountInformationView);
               },),
              CustomInfoProfile(text: 'Change Password'
                , onTap: () {
                  GoRouter.of(context)
                      .push(AppRouter.kChangePasswordView);
                },),
              CustomInfoProfile(text: 'My Interests', onTap: () {
                GoRouter.of(context).push(AppRouter.kMyInterestsView);
              },),

            ],
          ),
        )
    );
  }
}
