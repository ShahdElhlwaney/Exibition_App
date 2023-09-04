



import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';

class HomeSearchTextField extends StatelessWidget {
  const HomeSearchTextField({Key? key, required this.onChanged,}) : super(key: key);
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(

        onChanged:onChanged ,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 8,),
          hintStyle: TextStyle(
            color: ColorsApp.borderColor
          ),
          prefixIcon: Image.asset(Assets.searchIcon),
          hintText: 'Search for exhibitions, speakers',
          enabledBorder: buildOutlineInputBorder(ColorsApp.borderColor),
          focusedBorder:buildOutlineInputBorder(ColorsApp.borderColor),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder(Color color) {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.zero,
      borderSide: BorderSide(
          color:ColorsApp.borderColor,

      ),
    );
  }
}