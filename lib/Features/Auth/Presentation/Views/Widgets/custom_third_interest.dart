



import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/custom_user_interest.dart';
import 'package:flutter/material.dart';

class CustomThirdInterest  extends StatefulWidget {
  const CustomThirdInterest ({Key? key}) : super(key: key);

  @override
  State<CustomThirdInterest> createState() => _CustomThirdInterestState();
}

class _CustomThirdInterestState extends State<CustomThirdInterest> {
  bool isPressed=false;
  @override
  Widget build(BuildContext context) {
    return   CustomUserInteresrt(
      width: MediaQuery.of(context).size.width*.65
      , text: 'Identifications & Detection', onChanged: () {
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
