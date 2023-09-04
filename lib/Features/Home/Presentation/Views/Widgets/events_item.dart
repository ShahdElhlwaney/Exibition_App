


import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/arrow_button.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_time.dart';
import 'package:flutter/material.dart';

class EventsItem extends StatelessWidget {
  const EventsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: ColorsApp.borderColor)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(Assets.eventsImage,width: 80,height: 92,),
          SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16,),
              Text('Innovative solutions...',style: Styles.textStyle14.copyWith(
                  color: ColorsApp.blackColor,
                  fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 4,),
              Text('Microsoft',style: Styles.textStyle14.copyWith(
                  color: ColorsApp.isPressedColor
              ),),
              SizedBox(height: 10,),
              CustomTime()
            ],
          ),
          Spacer(),
          ArrowButton(),
          SizedBox(width: 12,)
        ],
      ),
    );
  }
}

