



import 'package:exibition/Features/Home/Presentation/Views/Widgets/notification_item.dart';
import 'package:flutter/material.dart';

class NotificationsListView extends StatelessWidget {
  const NotificationsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 3),
      itemCount: 5,
        itemBuilder: (BuildContext context ,index){
         return NotificationItem();
        });
  }
}
