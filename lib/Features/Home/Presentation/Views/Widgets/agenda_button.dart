import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Home/Presentation/Manager/AboutOrSpeakersCubit/about_or_speakers_cubit.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/added_to_agenda_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AgendaButton extends StatelessWidget {
  const AgendaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AboutOrSpeakersCubit, bool>(
      builder: (context, state) {
        return GestureDetector(
          onTap: (){
           BlocProvider.of<AboutOrSpeakersCubit>(context).changeColor(false);
          },
          child:state? Container(
            alignment: Alignment.center,
            height: 48,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: BoxDecoration(
                border: Border.all(color: ColorsApp.mainColor)
            ),
            child:Text('Add to my agenda',style: Styles.textStyle15.copyWith(
              color: ColorsApp.mainColor
            ),)
          ):AddedToAgendaButton()
        );
      },
    );
  }
}
