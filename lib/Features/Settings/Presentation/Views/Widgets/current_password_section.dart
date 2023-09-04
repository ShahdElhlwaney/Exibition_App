




import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_with_suffix_icon.dart';
import 'package:flutter/material.dart';

class CurrentPasswordSection extends StatefulWidget {
  const CurrentPasswordSection({Key? key}) : super(key: key);

  @override
  State<CurrentPasswordSection> createState() => _CurrentPasswordSectionState();
}

class _CurrentPasswordSectionState extends State<CurrentPasswordSection> {
  bool _currentPasswordVisible=false;

  String? password;

  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text('Current Password',style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        SizedBox(height: 8,),

        TextFieldWithSuffix(
          onChanged: (String text) {
            password=text;
          }
          , icon:  Icon(
            _currentPasswordVisible ? Icons.visibility_outlined : Icons
                .visibility_off_outlined
        )
          , obscureText: !_currentPasswordVisible
          , onTap: () {
          setState(() {
            _currentPasswordVisible=!_currentPasswordVisible;
          });
        }, validator: ( value) {
          if (value!.isEmpty) {
            return "* Required";
          } else if (value.length < 6) {
            return "Password should be atleast 6 characters";
          } else if (value.length > 15) {
            return "Password should not be greater than 15 characters";
          }

        }, controller: controller,
        ),
      ],
    );
  }
}
