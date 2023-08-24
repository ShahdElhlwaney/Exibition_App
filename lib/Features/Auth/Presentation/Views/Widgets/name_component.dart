


import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/text_field_without_suffix_icon.dart';
import 'package:flutter/material.dart';

class NameComponent extends StatelessWidget {
  const NameComponent({Key? key, required this.text, required this.onChanged}) : super(key: key);
  final String text;
  final void Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        SizedBox(height: 8,),
        TextFieldWithoutSuffixIcon
          (onChanged: onChanged, validator: (String? t) {  },),
      ],
    );
  }
}
