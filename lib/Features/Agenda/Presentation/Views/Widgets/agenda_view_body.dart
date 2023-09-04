


import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Agenda/Presentation/Views/Widgets/custom_agend.dart';
import 'package:exibition/Features/Agenda/Presentation/Views/Widgets/custom_view_my_agenda.dart';
import 'package:exibition/Features/Agenda/Presentation/Views/Widgets/manual_date_picker.dart';
import 'package:exibition/Features/Agenda/Presentation/Views/Widgets/vertical_line.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile_row.dart';
import 'package:flutter/material.dart';
//import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
class AgendaViewBody extends StatelessWidget {
  const AgendaViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return
      Padding(
      padding: const EdgeInsets.all(24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageProfileRow(),
            SizedBox(
              height: 24,
            ),
            Text('Agenda',style: Styles.textStyle16.copyWith(
              color: ColorsApp.blackColor,
              fontWeight: FontWeight.w600
            ),),
            SizedBox(
              height: 16,
            ),
            CustomViewMyAgenda(),
            SizedBox(height: 16,),
            ManualDatePicker(),
            SizedBox(height: 24,),
            CustomAgenda(),
            SizedBox(height: 16,),
            CustomAgenda(),
            SizedBox(height: 40,),
            Row(
              children: [
                Text('12:00 pm'),
                SizedBox(width: 18,),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: ColorsApp.borderColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            CustomAgenda(),
            Row(
              children: [
                Text('12:00 pm'),
                SizedBox(width: 18,),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                margin: EdgeInsets.only(right: 16),
                color: Color(0xff47DEFF1A).withOpacity(.1),
                width: 195,
                height: 68,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text('Innovative solutions...',),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Text('Hall 7'),
                    ),

                  ],
                ),
              ),
              VerticalLine()
            ],
          )
              ],
            ),
            SizedBox(height: 16,),

            CustomAgenda(),

          ],
        ),
      ),
    );
  }

}

