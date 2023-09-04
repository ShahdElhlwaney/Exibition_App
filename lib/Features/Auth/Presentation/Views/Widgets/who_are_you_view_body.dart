import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Manager/WhoAreYouCubit/who_are_you_cubit.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/head_text.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/you_are_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WhoAreYouViewBody extends StatelessWidget {
  const WhoAreYouViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const PersonHeadSection(),
          const SizedBox(height: 25,),
          const HeadText(text: 'Who are you?',),
          const SizedBox(height: 23,),
          YouAreRow(),
          const Spacer(),

          BlocBuilder<WhoAreYouCubit, WhoAreYouState>(
            builder: (context, state) {
              return Button(text: 'Next', onPressed: () {
                if(state is IsExhibitorState)
                  {
                    GoRouter.of(context).push(AppRouter.kExhibitorView);

                  }
                else if(state is IsVisitorState)
                  {
                    GoRouter.of(context).push(AppRouter.kCreateAccountView);

                  }
              },);
            },
          )


        ],
      ),
    );
  }
}
