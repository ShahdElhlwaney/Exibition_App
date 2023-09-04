


import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Features/Settings/Presentation/Views/Widgets/custom_info_profile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileInfoColumn extends StatelessWidget {
  const ProfileInfoColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomInfoProfile(text: 'Account Information', onTap: () {  },),
        CustomInfoProfile(text: 'Change Password'
          , onTap: () {
            GoRouter.of(context).push(AppRouter.kMyProfileView);
          },),
        CustomInfoProfile(text: 'My Interests', onTap: () {  },),

      ],
    );
  }
}