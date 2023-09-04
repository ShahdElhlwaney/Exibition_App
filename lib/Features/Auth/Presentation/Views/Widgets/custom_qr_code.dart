


import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';

class CustomQrCode extends StatelessWidget {
  const CustomQrCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width*.5,
      width: MediaQuery.of(context).size.width*.5,


      decoration: BoxDecoration(
        color: ColorsApp.mainColor,
        shape: BoxShape.circle,

      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(

          decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
          ),
          child: Padding(
            padding: const EdgeInsets.all(21),
            child: Image.asset(Assets.qrIcon
              ,height: 120,width: 120,fit: BoxFit.fill,),
          ),
        ),
      ),

    );
  }
}