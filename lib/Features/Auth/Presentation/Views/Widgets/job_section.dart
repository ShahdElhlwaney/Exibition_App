



import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/job_text_field.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_without_suffix_icon.dart';
import 'package:flutter/material.dart';

class JobSection extends StatelessWidget {
  const JobSection({Key? key, required this.controller}) : super(key: key);
 final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Job title',style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        const SizedBox(height: 8,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: JobTextField
            (onChanged: (String text) {  }, validator: (String? t) {  }
            , controller: controller,),
        ),
      ],
    );
  }
}
