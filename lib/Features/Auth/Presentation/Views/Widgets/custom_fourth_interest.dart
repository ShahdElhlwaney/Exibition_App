

import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_user_interest.dart';
import 'package:flutter/material.dart';

class CustomFourthInterest extends StatefulWidget {
  const CustomFourthInterest({Key? key}) : super(key: key);

  @override
  State<CustomFourthInterest> createState() => _CustomFourthInterestState();
}

class _CustomFourthInterestState extends State<CustomFourthInterest> {
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    return CustomUserInteresrt(width: MediaQuery.of(context).size.width*.49
      , text: 'Retail Solutions', onChanged: () {
        setState(() {
          isPressed=!isPressed;
        });
      },
      color: isPressed?ColorsApp.isPressedColor:Colors.white
      , borderColor: isPressed?Colors.transparent:ColorsApp.borderColor
      , icon: isPressed?Icons.check:Icons.add,
    );
  }
}
