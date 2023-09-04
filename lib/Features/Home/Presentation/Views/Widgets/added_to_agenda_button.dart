

import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddedToAgendaButton extends StatelessWidget {
  const AddedToAgendaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).pop();
      },
      child: Container(
        alignment: Alignment.center,
        height: 48,
        width: MediaQuery
            .of(context)
            .size
            .width,
        decoration: BoxDecoration(
            border: Border.all(color: ColorsApp.mainColor)
        ),
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 24,
              height: 24,
              child: Icon(Icons.check,color: Colors.white,size: 18,),
              decoration: BoxDecoration(
                  color: ColorsApp.mainColor,
                  shape: BoxShape.circle
              ),
            ),
            SizedBox(width: 8,),
            Text('Added to my agenda',style: Styles.textStyle15.copyWith(
                color: ColorsApp.mainColor)
            )
          ],
        ),
      ),
    );
  }
}
