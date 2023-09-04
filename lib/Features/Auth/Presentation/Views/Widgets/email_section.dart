


import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/email_text_field.dart';
import 'package:flutter/material.dart';

class EmailSection extends StatelessWidget {
  const EmailSection({Key? key, required this.controller,  this.hintText=''}) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Email',style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        SizedBox(height: 8,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: EmailTextField
            (
            onChanged: (String text ) {
            }
            , validator: (value ) {
            if (value!.isEmpty) {
              return "* Required";
            }
            else if (!value.contains('@')) {
              return "email should have '@'";
            }
          }, controller: controller,
            hintText: hintText,
          ),
        ),
      ],
    );
  }
}
