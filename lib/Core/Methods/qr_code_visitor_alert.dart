



import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_qr_code.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/your_ticket_row.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void QrCodeVisitorAlert(BuildContext context) {
  Alert(
      style: AlertStyle(
        alertBorder: RoundedRectangleBorder(
            borderRadius:BorderRadius.zero
          //BorderRadius.circular(0.0), // Set to 0.0 for no borderRadius
        ),
      ),
      closeIcon: Padding(
        padding: const EdgeInsets.all(20),
        child:YourTicketRow(),
      ),
      buttons: [],
      context: context,
      //title: "RFLUTTER ALERT",
      // desc: "Flutter is better with RFlutter Alert.",
      image: Column(
        children: [
          CustomQrCode(),
          SizedBox(height: 10,),
          Text('ID: Visitor'
            ,style: Styles.textStyle20.copyWith(
                color: ColorsApp.mainColor,
                fontWeight: FontWeight.w700
            ),),
          SizedBox(height: 8,),
          Text('Please scan your QR code at the ',style: Styles.textStyle16.copyWith(
              color: ColorsApp.blackColor,
              fontWeight: FontWeight.w400
          ),),
          Text('entering gates to verify your',style: Styles.textStyle16.copyWith(
              color: ColorsApp.blackColor,
              fontWeight: FontWeight.w400
          )),
          Text('registration',style: Styles.textStyle16.copyWith(
              color: ColorsApp.blackColor,
              fontWeight: FontWeight.w400
          )),

        ],
      )
  ).show();
}
