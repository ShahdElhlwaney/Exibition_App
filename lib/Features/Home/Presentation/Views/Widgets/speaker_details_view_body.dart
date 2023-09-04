









import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/follow_button.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_page.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile_row.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/sessions_list_view.dart';
import 'package:flutter/material.dart';

class SpeakerDetailsViewBody extends StatelessWidget {
  const SpeakerDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageProfileRow(),
            SizedBox(height: 16,),
            HeadPage(text: 'Speaker Details',),
            SizedBox(height: 16,),
            Image.asset(Assets.speakerImage,width:
                MediaQuery.of(context).size.width,height:196,fit: BoxFit.fill,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text('Jeanne Jerde',style: Styles.textStyle16.copyWith(
                  color: ColorsApp.blackColor,
                  fontWeight: FontWeight.w600
                ),
                  textAlign: TextAlign.center,

                ),
              ),
              FollowButtom()
            ],
            ),
            Text('Human Interactions Supervisor',style: Styles.textStyle14.copyWith(
              color: ColorsApp.blackColor
            ),),
            SizedBox(height: 24,),
            Text('Bio',style: Styles.textStyle16.copyWith(color: ColorsApp.mainColor,
fontWeight: FontWeight.w600)),
            SizedBox(
              height: 8,
            ),
            Text('“ Jeanne Jerde is a Human interaction supervisor with 5+ years of experience helping job seekers navigate '
                'the job search through one-to-one coaching, webinars and'
                ' events. She’s motivated by the mission to help people find'
                ' fulfillment and belonging in their careers “',
            style: Styles.textStyle11.copyWith(
              color: ColorsApp.blackColor
            ),),
            SizedBox(height: 24,),
            Text('Sessions',style: Styles.textStyle16.copyWith(
              color: ColorsApp.blackColor,
              fontWeight: FontWeight.w600
            ),),
            SessionListView()
          ]
        )
      ),


  );
  }
}


