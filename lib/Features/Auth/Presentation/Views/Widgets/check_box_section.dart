import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_check_box.dart';
import 'package:flutter/material.dart';

class CheckBoxSection extends StatelessWidget {
  const CheckBoxSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
        children:[
          CustomCheckBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('I agree to',style: Styles.textStyle14.copyWith(
                      color: const Color(0xff0D0D0D)
                  ),),
                  Text(' The Terms Of Service',style: Styles.textStyle14.copyWith(
                      color: ColorsApp.mainColor
                  ),),
                  Text('and',style: Styles.textStyle14.copyWith(
                      color: const Color(0xff0D0D0D)
                  ),),
                ],
              ),
              SizedBox(height: 5,),
              Row(
                children: [
                  Text('acknowledge',style: Styles.textStyle14.copyWith(
                      color: const Color(0xff0D0D0D)
                  ),),
                  Text(' The Privacy Policy',style: Styles.textStyle14.copyWith(
                      color: ColorsApp.mainColor
                  ),),
                ],
              )
            ],
          )
        ]
    );
  }
}
