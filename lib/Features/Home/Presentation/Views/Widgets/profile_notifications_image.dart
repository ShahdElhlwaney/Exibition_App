


import 'package:exibition/Core/Utils/assets.dart';
import 'package:flutter/material.dart';

class ProfileNotificationsProfile extends StatelessWidget {
  const ProfileNotificationsProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child:Image.asset(Assets.profileTest,
          width: 42,
          height: 42,
          fit: BoxFit.fill,
        )
    );
  }
}
