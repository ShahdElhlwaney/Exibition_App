


import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/custom_user_interest.dart';
import 'package:flutter/material.dart';

class ThirdRowInterests extends StatefulWidget {
  const ThirdRowInterests({Key? key}) : super(key: key);

  @override
  State<ThirdRowInterests> createState() => _ThirdRowInterestsState();
}

class _ThirdRowInterestsState extends State<ThirdRowInterests> {
  bool isPressed1=false;
  bool isPressed2=false;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomUserInteresrt(
          width: MediaQuery.of(context).size.width*.38
          , text: 'Cloud', onChanged: () {
          setState(() {
            isPressed1=!isPressed1;
          });
        },
          color: isPressed1?ColorsApp.isPressedColor:Colors.white
          , borderColor: isPressed1?Colors.transparent:ColorsApp.borderColor
          , icon: isPressed1?Icons.check:Icons.add,),
        SizedBox(width: 16,),
        CustomUserInteresrt(
          width: MediaQuery.of(context).size.width*.38
          , text: 'Biometrics', onChanged: () {
          setState(() {
            isPressed2=!isPressed2;
          });
        },
          color: isPressed2?ColorsApp.isPressedColor:Colors.white
          , borderColor: isPressed2?Colors.transparent:ColorsApp.borderColor
          , icon: isPressed2?Icons.check:Icons.add,
        )
      ],
    );
  }
}
