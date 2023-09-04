

import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Styles{
  static const textStyle18=TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600 ,///semiBold
      color: ColorsApp.blackColor
  );

  static const textStyle11=TextStyle(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color:  Colors.white

  );
  static const textStyle32=TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.w700,
    color: Colors.white
  );
  static const textStyle14=TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Colors.white

  );
  static const textStyle16=TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
    color: Colors.white
  );
  static const textStyle20=TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    color:  Colors.white
  );
  static const textStyle15=TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.w400,
      color:  ColorsApp.mainColor
  );
}