



import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile.dart';
import 'package:flutter/material.dart';

class ImageProfileRow extends StatelessWidget {
  const ImageProfileRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        PersonHeadSection(),
        CustomImageProfile(heightWidth: 40,),
      ],
    );
  }
}
