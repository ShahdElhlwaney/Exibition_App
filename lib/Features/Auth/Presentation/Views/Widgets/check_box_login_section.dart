


import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class CheckBoxLoginSection extends StatelessWidget {
  const CheckBoxLoginSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomCheckBox(),
            Padding(
              padding: const EdgeInsets.only(bottom: 17),
              child: Text('Remember me'
                ,style: Styles.textStyle14.copyWith(
                    color: ColorsApp.blackColor
                ),),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 17),
          child: Text('Forgot Password?'
            ,style: Styles.textStyle14.copyWith(
                color: ColorsApp.mainColor
            ),),
        )
      ],
    );
  }
}
