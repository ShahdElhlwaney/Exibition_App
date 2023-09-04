



import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  const ArrowButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      width: 28,
      height: 43,
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: TextButton(
            onPressed: (){}, child: Icon(
          Icons.arrow_forward_ios,
          size: 15,
        ),
            style:TextButton.styleFrom(
                backgroundColor: ColorsApp.mainColor,
                iconColor: Colors.white,
                padding: EdgeInsets.only(bottom: 1),

            )
        ),
      ),
    );
  }
}
