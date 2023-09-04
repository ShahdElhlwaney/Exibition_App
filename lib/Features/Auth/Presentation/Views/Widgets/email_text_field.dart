


import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({Key? key, required this.onChanged
    , required this.validator, required this.controller
    ,  this.hintText='',  }) : super(key: key);
  final void Function(String) onChanged;
  final String? Function(String?)? validator;
  final TextEditingController controller ;//=TextEditingController();
  final String hintText;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 45,
      width: MediaQuery.of(context).size.width*.41,
      child: TextFormField(
        controller: controller,
        validator:validator ,
        onChanged:onChanged ,
        decoration: InputDecoration(
          hintText: hintText,
          enabledBorder: buildOutlineInputBorder(ColorsApp.borderColor),
          focusedBorder:buildOutlineInputBorder(ColorsApp.borderColor),
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