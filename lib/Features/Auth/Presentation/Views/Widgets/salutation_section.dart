



import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_with_suffix_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SalutationSection extends StatelessWidget {
  const SalutationSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController salutationController=TextEditingController();

    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Salutation',style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        const SizedBox(height: 8,),
        TextFieldWithSuffix(
          onChanged: (String t ) {  }, icon:
        const Icon(FontAwesomeIcons.angleDown), obscureText: false, onTap: () {  }
          ,validator: (String?value ) {

        }, controller: salutationController,),

      ],
    );
  }
}
