



import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_session_details.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_page.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile_row.dart';
import 'package:flutter/material.dart';

class MyAgendaViewBody extends StatelessWidget {
  const MyAgendaViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              ImageProfileRow(),
              SizedBox(
                height: 32.92,
              ),
              HeadPage(text: 'My Agenda'),
              SizedBox(height: 20,),
              CustomSessionDetails(),
              SizedBox(height: 24,),
              CustomSessionDetails(),
              SizedBox(height: 24,),
              CustomSessionDetails(),
              SizedBox(height: 24,)
            ],
          ),
        )
    );
  }
}
