



import 'package:exibition/Core/Utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectTextField extends StatelessWidget {
  const SelectTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

      return SizedBox(
        height: 45,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(

          validator:(String  ){},
          onTap: (){},
          decoration: InputDecoration(
            suffixIcon: Icon(FontAwesomeIcons.angleDown),
            hintText: 'Select',
            enabledBorder: buildOutlineInputBorder(ColorsApp.borderColor),
            focusedBorder:buildOutlineInputBorder(ColorsApp.borderColor),
          ),
        ),
      );
    }

    OutlineInputBorder buildOutlineInputBorder(Color color) {
      return OutlineInputBorder(
        borderSide: BorderSide(
            color:ColorsApp.borderColor,
        ),
      );
    }
  }

