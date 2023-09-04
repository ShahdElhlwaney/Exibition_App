



import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/number_text_field.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_without_suffix_icon.dart';
import 'package:flutter/material.dart';

class PhoneNumberSection extends StatelessWidget {
  const PhoneNumberSection({Key? key, required this.onChanged, required this.controller}) : super(key: key);
  final void Function(String) onChanged;
   final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Phone Number',style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        SizedBox(height: 8,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: NumberTextField
            (onChanged: onChanged, validator: (String?t ) {  }
            , controller: controller,),
        ),
      ],
    );
  }
}
