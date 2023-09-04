



import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile_row.dart';
import 'package:exibition/Features/Settings/Presentation/Views/Widgets/profile_info_column.dart';
import 'package:flutter/material.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              ImageProfileRow(),
              SizedBox(height: 16,),
              Text('Setting',style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w600,
                  color: ColorsApp.blackColor
              ),),
              SizedBox(height: 16,),
              CustomImageProfile(heightWidth: 104,),
              SizedBox(height: 16,),
              Text('Loaa Hany',style: Styles.textStyle18,),
              SizedBox(height: 4,),
              Text('Loaahany209@gmail.com',style: Styles.textStyle16.copyWith(
                  color: ColorsApp.borderColor
              ),),
              SizedBox(height: 4,),
              Text('Designer',style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.w500,
                  color: ColorsApp.blackColor)),
              SizedBox(height: 32,),

              ProfileInfoColumn(),
              SizedBox(height: 16,),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text('Logout',style: Styles.textStyle14.copyWith(
                      color: Color(0xffBD0D0D)
                  ),),
                ),
              )

            ],
          ),
        )
    );
  }
}

