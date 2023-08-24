
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/custom_user_interest.dart';
import 'package:flutter/material.dart';

class CustomFirstInterest extends StatefulWidget {
  const CustomFirstInterest({Key? key}) : super(key: key);
  @override
  State<CustomFirstInterest> createState() => _CustomFirstInterestState();
}

class _CustomFirstInterestState extends State<CustomFirstInterest> {
  bool isPressed=false;

  @override
  Widget build(BuildContext context) {
    return  CustomUserInteresrt(
      width: MediaQuery.of(context).size.width*.62
      , text: 'Information Technology'
      , onChanged: () {
      setState(() {
        isPressed=!isPressed;
      });
    }, color: isPressed?ColorsApp.isPressedColor:Colors.white
      , borderColor: isPressed?Colors.transparent:ColorsApp.borderColor
      , icon: isPressed?Icons.check:Icons.add,
    );
  }
}
