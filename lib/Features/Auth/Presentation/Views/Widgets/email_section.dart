


import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/text_field_without_suffix_icon.dart';
import 'package:flutter/material.dart';

class EmailSection extends StatelessWidget {
  const EmailSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email',style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        SizedBox(height: 8,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TextFieldWithoutSuffixIcon
            (
            onChanged: (String text ) {
              email=text;
            }
            , validator: (value ) {
            if (value!.isEmpty) {
              return "* Required";
            }
            else if (!value.contains('@')) {
              return "email should have '@'";
            }
          },
          ),
        ),
      ],
    );
  }
}
