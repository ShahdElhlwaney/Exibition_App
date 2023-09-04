


import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/first_name_text_field.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_without_suffix_icon.dart';
import 'package:flutter/material.dart';

class NameComponent extends StatelessWidget {
  const NameComponent({Key? key, required this.text, required this.onChanged, required this.nameController}) : super(key: key);
  final String text;
  final void Function(String) onChanged;
  final TextEditingController nameController;

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        SizedBox(height: 8,),
        FirstNameTextField
          (onChanged: onChanged, validator: (String? t) {  }, controller: nameController,),
      ],
    );
  }
}
