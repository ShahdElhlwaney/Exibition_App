

import 'package:flutter/material.dart';

import '../Utils/assets.dart';
import '../Utils/styles.dart';

class HeadSection extends StatelessWidget {
  const HeadSection({Key? key, required this.crossAxisAlignment, required this.mainAxisAlignment}) : super(key: key);
 final CrossAxisAlignment crossAxisAlignment;
 final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Image.asset(Assets.logo,width: 42.66,),
        const SizedBox(width: 10.67,),

        const SizedBox(
          height: 40,
          child: VerticalDivider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
         Column(
         mainAxisAlignment: mainAxisAlignment,
          children: [
            Text('Technical LifeWorks',style: Styles.textStyle20,),
            SizedBox(height: 4,),
            Text('dignified Trade Show and Exhibition',style: Styles.textStyle11,)
          ],
        )
      ],
    );
  }
}
