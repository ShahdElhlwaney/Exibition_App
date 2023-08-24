


import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/custom_user_interest.dart';
import 'package:flutter/material.dart';

class CustomSecondInterest extends StatefulWidget {
  const CustomSecondInterest({Key? key}) : super(key: key);

  @override
  State<CustomSecondInterest> createState() => _CustomSecondInterestState();
}

class _CustomSecondInterestState extends State<CustomSecondInterest> {
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    return CustomUserInteresrt(width: MediaQuery.of(context).size.width*.56
      , text: 'Telecommunications', onChanged: () {
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
