



import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class PersonHeadSection extends StatelessWidget {
  const PersonHeadSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(Assets.logoMainColor,width: 42.66,),
        const SizedBox(width: 10.67,),

        const SizedBox(
          height: 40,
          child: VerticalDivider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Technical LifeWorks',style: Styles.textStyle20.copyWith(
              color: ColorsApp.mainColor
            ),),
            SizedBox(height: 4,),
            Text('dignified Trade Show and Exhibition'
              ,style: Styles.textStyle11.copyWith(
                  color: ColorsApp.mainColor
              ),)
          ],
        )
      ],
    );
  }
}
