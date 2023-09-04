









import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/follow_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SpeakersItem extends StatelessWidget {
  const SpeakersItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kSpeakerDetailsView);
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorsApp.borderColor)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Assets.speakerImage,width: 80,height: 92,),
            SizedBox(width: 12,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16,),
              Text('Jeanne Jerde',style: Styles.textStyle14.copyWith(
                color: ColorsApp.blackColor,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 12,),
              Text('Human Interactions \nSupervisor',style: Styles.textStyle14.copyWith(
                color: ColorsApp.borderColor
              ),)
            ],
            ),
            Spacer(),
            FollowButtom(),
            SizedBox(width: 12,)
          ],
        ),
      ),
    );
  }
}
