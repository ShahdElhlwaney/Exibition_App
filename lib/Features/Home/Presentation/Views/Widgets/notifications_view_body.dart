




import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_row.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/notification_item.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/notifications_list_view.dart';
import 'package:flutter/material.dart';

class NotificationsViewBody extends StatelessWidget {
  const NotificationsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24,top: 30,right: 24),
          child: Column(
            children: [
              PersonHeadSection(),
              SizedBox(height: 16,),
              HeadRow(head: 'Notifications',),
              SizedBox(height: 16,),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                 child: NotificationsListView()
              )
            ],
          ),
        ));
  }
}
