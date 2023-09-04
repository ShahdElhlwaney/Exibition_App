

import 'package:exibition/Features/Home/Presentation/Views/Widgets/events_item.dart';
import 'package:flutter/material.dart';

class EventsNewsColumn extends StatelessWidget {
  const EventsNewsColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.7,
      child: Column(
        children: [
          EventsItem(),
          SizedBox(height: 16,),
          EventsItem(),
          SizedBox(height: 16,),

          EventsItem(),
          SizedBox(height: 16,),

          EventsItem(),

        ],
      ),
    );
  }
}