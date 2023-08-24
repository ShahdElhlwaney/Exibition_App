



import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';




class CustomCheckBox extends StatefulWidget {

  CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(bottom: 18),
      child: Checkbox(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      value:isChecked,
      onChanged:(val){
      setState(() {
        isChecked = val!;
      });
  },
        side: BorderSide(color: ColorsApp.borderColor),
      ),
    );
}
}
