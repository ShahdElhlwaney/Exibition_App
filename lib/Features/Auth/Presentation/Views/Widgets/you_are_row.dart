

import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/you_are.dart';
import 'package:flutter/material.dart';

class YouAreRow extends StatefulWidget {
  const YouAreRow({Key? key}) : super(key: key);

  @override
  State<YouAreRow> createState() => _YouAreRowState();
}

class _YouAreRowState extends State<YouAreRow> {
  bool visitorPresed=false;
  bool exhibitorPressed=false;

  @override
  Widget build(BuildContext context) {
    return    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        YouAre(imageUrl: exhibitorPressed?Assets.whiteExhibitor:Assets.exhibitor, text: '\t\tI’m an\nExhibitor'
          , onTap:
              () {
          setState(() {
            exhibitorPressed=!exhibitorPressed;
            visitorPresed=false;
          });
          }, color: exhibitorPressed?ColorsApp.mainColor:Colors.white
          , borderColor: exhibitorPressed?
          Colors.transparent:ColorsApp.borderColor
          , textColor: exhibitorPressed?
          Colors.white:ColorsApp.blackColor,),
        YouAre(
          imageUrl: visitorPresed?Assets.whiteCamera:Assets.visitor, text: '\tI’m a\nVisitor'
          , onTap: () {
                   setState(() {
                     visitorPresed=!visitorPresed;
                     exhibitorPressed=false;
                   });
          }, color: visitorPresed?ColorsApp.mainColor:Colors.white
          , borderColor: visitorPresed?
          Colors.transparent:ColorsApp.borderColor
          , textColor: visitorPresed?
          Colors.white:ColorsApp.blackColor,),

      ],
    );
  }
}
