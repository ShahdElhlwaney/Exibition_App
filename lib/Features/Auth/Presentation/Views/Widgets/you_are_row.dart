

import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Auth/Presentation/Manager/WhoAreYouCubit/who_are_you_cubit.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/you_are.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';



class YouAreRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return    BlocBuilder<WhoAreYouCubit, WhoAreYouState>(
  builder: (context, state) {
    String imageExhibitor= state is IsExhibitorState?Assets.whiteExhibitor:Assets.exhibitor;
    Color exhibitorPressed= state is IsExhibitorState?ColorsApp.mainColor:Colors.white;
    Color exhibitorBorderColor=state is IsExhibitorState?Colors.transparent:ColorsApp.borderColor;
    Color exhibitorTextColor=state is IsExhibitorState?Colors.white:ColorsApp.blackColor;


    String imageVisitor= state is IsVisitorState?Assets.whiteExhibitor:Assets.exhibitor;
    Color visitorPressed= state is IsVisitorState?ColorsApp.mainColor:Colors.white;
    Color visitorBorderColor=state is IsVisitorState?Colors.transparent:ColorsApp.borderColor;
    Color visitorTextColor=state is IsVisitorState?Colors.white:ColorsApp.blackColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        YouAre(imageUrl: imageExhibitor, text: '\t\tI’m an\nExhibitor'
          , onTap:
              () {
          BlocProvider.of<WhoAreYouCubit>(context).youAre(true);
       
          }, color: exhibitorPressed
          , borderColor: exhibitorBorderColor

          , textColor: exhibitorTextColor
          ,),
        YouAre(
          imageUrl:imageVisitor, text: '\tI’m a\nVisitor'
          , onTap: () {
          BlocProvider.of<WhoAreYouCubit>(context).youAre(false);
        },color:visitorPressed
          , borderColor: visitorBorderColor
          , textColor: visitorTextColor
          ,),

      ],
    );
  },
);
  }
}
