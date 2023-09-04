


import 'package:exibition/Features/Home/Presentation/Views/Widgets/speakers_item.dart';
import 'package:flutter/material.dart';

class SpeakersColumn extends StatelessWidget {
  const SpeakersColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.63,
      child: Column(
        children: [
          SpeakersItem(),
          SizedBox(height: 16,),
          SpeakersItem(),
          SizedBox(height: 16,),

          SpeakersItem(),
          SizedBox(height: 16,),

          SpeakersItem()

        ],
      ),
    );
  }
}