import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Home/Presentation/Manager/AboutOrSpeakersCubit/about_or_speakers_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AboutOrSpeakers extends StatelessWidget {
  const AboutOrSpeakers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<AboutOrSpeakersCubit, bool>(
      builder: (context, state) {
        Color aboutContainerColor = state ? Colors.white : ColorsApp.mainColor;
        Color speakersContainerColor = state ? ColorsApp.mainColor : Colors.white;
        Color aboutColorText = state ? ColorsApp.blackColor : Colors.white;
        Color speakersColorText = state ? Colors.white:ColorsApp.mainColor ;

        return Container(
          padding: EdgeInsets.all(8),
          height: 48,
          width: MediaQuery
              .of(context)
              .size
              .width,
          color: ColorsApp.mainColor,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  context.read<AboutOrSpeakersCubit>().changeColor(true);
                  //  BlocProvider.of<AboutOrSpeakersCubit>(context).changeColor(true);
                },
                child: Container(
                  alignment: Alignment.center,
                  color: aboutContainerColor,
                  width: 147,
                  height: 32,
                  child: Text('About', style: Styles.textStyle14.copyWith(
                      color: aboutColorText,
                      fontWeight: FontWeight.w600
                  ),),
                ),
              ),
              GestureDetector(
                onTap: () {
                  context.read<AboutOrSpeakersCubit>().changeColor(false);
                },
                child: Container(
                  color: speakersContainerColor,
                  alignment: Alignment.center,
                  width: 147,
                  height: 32,
                  child:  Text('Speakers',style: Styles.textStyle14.copyWith(
                color: speakersColorText,
                  fontWeight: FontWeight.w600
        )
        ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
