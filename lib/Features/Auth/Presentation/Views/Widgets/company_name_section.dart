


import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/text_field_without_suffix_icon.dart';
import 'package:flutter/material.dart';

class CompanyNameSection extends StatelessWidget {
  const CompanyNameSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Company Name',style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        SizedBox(height: 8,),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TextFieldWithoutSuffixIcon
            (onChanged: (String text) {  }, validator: (String?t ) {  },),
        ),
      ],
    );
  }
}
