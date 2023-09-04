



import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/salutation_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_with_suffix_icon.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/check_box_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/head_text.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_information_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/upload_photo.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
class CreateAccountViewBody extends StatelessWidget {
  const CreateAccountViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController salutationController=TextEditingController();
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
              const HeadText(text: 'Create an account',),
              const SizedBox(height: 26,),
              const UploadPhoto(),
              Text('Upload a photo',style: Styles.textStyle14.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500
              ),),
              const SizedBox(height: 24,),

              SalutationSection(),
              const SizedBox(height: 16,),
              const PersonInformationSection(),
              const SizedBox(height: 16,),
              const CheckBoxSection(),
              const SizedBox(height: 30,),
              Button(text: 'Sign up', onPressed: () {
                if(formKey.currentState!.validate())
                  {
                    GoRouter.of(context).push(AppRouter.kInterestsUserView
                    );

                  }
              },),
              const SizedBox(height: 56,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? ',style: Styles.textStyle14.copyWith(
                  color: ColorsApp.blackColor
                ),),
                  GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push(AppRouter.kLoginView);
                    },
                    child: Text('Login',style: Styles.textStyle14.copyWith(
                      color: ColorsApp.mainColor
                    ),),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
