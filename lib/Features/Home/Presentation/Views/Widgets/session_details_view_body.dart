import 'package:exibition/Features/Home/Presentation/Views/Widgets/about_or_speakers.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/about_screen.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/agenda_button.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_session_details.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_page.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile_row.dart';
import 'package:flutter/material.dart';

class SessionDetailsViewBody extends StatelessWidget {
  const SessionDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            ImageProfileRow(),
            SizedBox(height: 15.91,),
            HeadPage(text: 'Session Details',),
            SizedBox(height: 26,),
            CustomSessionDetails(),
            AboutOrSpeakers(),
            AboutScreen(),
            SizedBox(height: 40,),
            AgendaButton()
          ],
        ),
      ),
    );
  }
}
