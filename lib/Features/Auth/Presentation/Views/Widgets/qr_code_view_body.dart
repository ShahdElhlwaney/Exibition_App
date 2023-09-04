



import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/button_with_border.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/custom_qr_code.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/your_ticket_row.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class QrCodeViewBody extends StatelessWidget {
  const QrCodeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const PersonHeadSection(),
          SizedBox(height: 24,),
          YourTicketRow(),
          SizedBox(height: 54,),
          CustomQrCode(),
          SizedBox(height: 35,),
          Text('ID: Exhibitor',style: Styles.textStyle20.copyWith(
            color: ColorsApp.mainColor,
            fontWeight: FontWeight.w700
          ),),
          SizedBox(height: 8,),
          Text('Please scan your QR code at the entering'
            ,style: Styles.textStyle16.copyWith(
              color: ColorsApp.blackColor,
              fontWeight: FontWeight.w400
            ),),
           Text(' gates to verify your registration',style: Styles.textStyle16.copyWith(
               color: ColorsApp.blackColor,
               fontWeight: FontWeight.w400
           )),
          Spacer(),
          Button(text: 'Invite Visitors'
            , onPressed: () {
            GoRouter.of(context).push(AppRouter.kInviteVisitorsView);
            },width: MediaQuery.of(context).size.width,
          ),
          SizedBox(height: 16,),
          ButtonWithBorder(onTap: () {
            GoRouter.of(context).push(AppRouter.kWhoAreYouView);
          },)


        ],
      ),
    );
  }
}


