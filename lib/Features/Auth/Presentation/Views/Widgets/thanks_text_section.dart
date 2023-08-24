



import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class ThanksTextSection extends StatelessWidget {
  const ThanksTextSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Thanks, your account has been '
          ,style: Styles.textStyle20.copyWith(
              color: ColorsApp.blackColor
          ),),
        Text('created successfully' ,style: Styles.textStyle20.copyWith(
            color: ColorsApp.blackColor)
        ),
        SizedBox(height: 8,),
        Text('You will receive an email shortly with ' ,style: Styles.textStyle16.copyWith(
            color: ColorsApp.blackColor)
        ),
        Text('your account details' ,style: Styles.textStyle16.copyWith(
            color: ColorsApp.blackColor)
        )
      ],
    );
  }
}
