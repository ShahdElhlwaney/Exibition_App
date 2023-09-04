



import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class YourTicketRow extends StatelessWidget {
  const YourTicketRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Your Ticket',style: Styles.textStyle16.copyWith(
            color: ColorsApp.blackColor,
            fontWeight: FontWeight.w600
        ),),
        Icon(Icons.close,size: 24,),
      ],
    );
  }
}
