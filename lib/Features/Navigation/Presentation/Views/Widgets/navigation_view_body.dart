



import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile_row.dart';
import 'package:exibition/Features/Navigation/Presentation/Views/Widgets/navigation_button.dart';
import 'package:flutter/material.dart';

class NavigationViewBody extends StatelessWidget {
  const NavigationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          ImageProfileRow(),
          SizedBox(height: 16,),
          Image.asset(Assets.navigationImage
            ,width: MediaQuery.of(context).size.width,),
          SizedBox(height: 8,),
          NavigationButton()
        ],
      ),
    );
  }
}
