




import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile.dart';
import 'package:flutter/material.dart';

class ImageProfileWithCamera extends StatelessWidget {
  const ImageProfileWithCamera({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            height: 125,
            width: 125,
            child: CustomImageProfile(heightWidth: 104)),
        Transform.translate(
          offset: Offset(3, 12), // Offset to move the container down
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                color: ColorsApp.isPressedColor, // Customize the style of the extended part
                shape: BoxShape.circle
            ),
            child: Image.asset(Assets.cameraProfle
                ,color: Colors.white),
          ),
        )
      ],
    );
  }
}