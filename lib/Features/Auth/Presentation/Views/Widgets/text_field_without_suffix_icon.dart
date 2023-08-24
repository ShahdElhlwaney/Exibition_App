




import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';

class TextFieldWithoutSuffixIcon extends StatelessWidget {
  const TextFieldWithoutSuffixIcon({Key? key, required this.onChanged, required this.validator}) : super(key: key);
  final void Function(String) onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 45,
      width: MediaQuery.of(context).size.width*.41,
      child: TextFormField(
        validator:validator ,
        onChanged:onChanged ,
        decoration: InputDecoration(
            hintText: '',
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
