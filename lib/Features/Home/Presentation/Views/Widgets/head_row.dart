



import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class  HeadRow extends StatelessWidget {
  const  HeadRow({Key? key, required this.head}) : super(key: key);
  final String head;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12),
          child: GestureDetector(
            onTap: (){
              GoRouter.of(context).pop();
              },
              child: Icon(Icons.arrow_back_ios_new)),
        ),
        SizedBox(width: 69,),
        Text(head,style: Styles.textStyle16.copyWith(
            color: ColorsApp.blackColor,
            fontWeight: FontWeight.w600
        ),),
        Spacer()
      ],
    );
  }
}
