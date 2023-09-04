


import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFieldWithSuffix extends StatelessWidget {
  const TextFieldWithSuffix({Key? key, required this.onChanged,
    required this.icon, required this.obscureText
    , required this.onTap, required this.validator
    , required this.controller}) : super(key: key);
  final void Function(String) onChanged;
  final bool obscureText;
  final Widget icon;
  final void Function() onTap;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        controller:controller ,
        validator:validator ,
        obscureText:obscureText ,
        onChanged:onChanged ,
        decoration: InputDecoration(
            hintText: '',
            enabledBorder: buildOutlineInputBorder(ColorsApp.borderColor),
            focusedBorder:buildOutlineInputBorder(ColorsApp.borderColor),
            suffixIcon: GestureDetector(
              onTap:onTap ,
                child: icon)
        ),
      ),
    );
  }
  OutlineInputBorder buildOutlineInputBorder(Color color) {
    return OutlineInputBorder(
      borderSide: BorderSide(
          color:color// ColorsApp.notActiveMainColor,
      ),
    );
  }
}
