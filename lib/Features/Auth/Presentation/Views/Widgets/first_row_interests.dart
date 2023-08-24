


import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/custom_user_interest.dart';
import 'package:flutter/material.dart';

class FirstRowIntersts extends StatefulWidget {
  const FirstRowIntersts({Key? key}) : super(key: key);

  @override
  State<FirstRowIntersts> createState() => _FirstRowInterstsState();
}

class _FirstRowInterstsState extends State<FirstRowIntersts> {
  bool isPressed1=false;
      bool isPressed2=false;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomUserInteresrt(
          width: MediaQuery.of(context).size.width*.59
          , text: 'Home Automation', onChanged: () {
          setState(() {
            isPressed1=!isPressed1;
          });
        },
          color: isPressed1?ColorsApp.isPressedColor:Colors.white
          , borderColor: isPressed1?Colors.transparent:ColorsApp.borderColor
          , icon: isPressed1?Icons.check:Icons.add,
        ),
        const SizedBox(width: 16,),
        CustomUserInteresrt(
          width: MediaQuery.of(context).size.width*.25
          , text: 'NFC', onChanged: () {
          setState(() {
            isPressed2=!isPressed2;
          });
        },
          color: isPressed2?ColorsApp.isPressedColor:Colors.white
          , borderColor: isPressed2?Colors.transparent:ColorsApp.borderColor
          , icon: isPressed2?Icons.check:Icons.add,
        ),
      ],
    );
  }
}
