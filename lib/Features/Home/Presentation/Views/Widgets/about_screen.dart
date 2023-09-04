import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Home/Presentation/Manager/AboutOrSpeakersCubit/about_or_speakers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutOrSpeakersCubit, bool>(
      builder: (context, state) {
        if(state) {
          return Column(
            children: [
              SizedBox(height: 16,),
              Text('During the Session, you can expect to:', style:
              Styles.textStyle14.copyWith(
                  color: ColorsApp.blackColor,
                  fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 8,),
              Text(
                "- Receive Networking Opportunities With The Brightest, Most Innovative Minds In The Data Center Industr\n- Take A Peek Into The Future "
                    "Of Data Center Technologies\n- Expand Your Knowledge On Managing Data Centers "
                    "Cost-Effectively\n- Learn Energy Control Efficiencies"
                    " That Are Economical While Demonstrating Environmental Stewardship\n"
                    "- Remain Updated Of New Product Launches- Understand How To Manage "
                    "Costs Prudently As Data Center Needs And Workloads Grow",
                overflow: TextOverflow.fade, style: Styles.textStyle14.copyWith(
                  color: ColorsApp.blackColor
              ),
              )
            ],
          );
        }
        else
          {
            return Column(
              children: [
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(Assets.speakerImage
                          ,width: 152,height: 122,fit: BoxFit.fill,),
                        SizedBox(height: 12,),
                        Text('Jeanne Jerde',style: Styles.textStyle14.copyWith(
                          color: ColorsApp.blackColor,
                          fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(Assets.speakerImage
                          ,width: 152,height: 122,fit: BoxFit.fill,),
                          SizedBox(height: 12,),
                        Text('Jeanne Jerde',style: Styles.textStyle14.copyWith(
                            color: ColorsApp.blackColor,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Image.asset(Assets.speakerImage
                          ,width: 152,height: 122,fit: BoxFit.fill,),
                        SizedBox(height: 12,),
                        Text('Jeanne Jerde',style: Styles.textStyle14.copyWith(
                            color: ColorsApp.blackColor,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(Assets.speakerImage
                          ,width: 152,height: 122,fit: BoxFit.fill,),
                            SizedBox(height: 12,),
                        Text('Jeanne Jerde',style: Styles.textStyle14.copyWith(
                            color: ColorsApp.blackColor,
                            fontWeight: FontWeight.w600
                        ),)
                      ],
                    )
                  ],
                )
              ],
            );
          }
      },
    );
  }
}
