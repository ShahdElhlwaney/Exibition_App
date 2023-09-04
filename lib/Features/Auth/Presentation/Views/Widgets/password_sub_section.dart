


import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_with_suffix_icon.dart';
import 'package:flutter/material.dart';

class PasswordSubSection extends StatefulWidget {
  const PasswordSubSection({Key? key}) : super(key: key);

  @override
  State<PasswordSubSection> createState() => _PasswordSubSectionState();
}

class _PasswordSubSectionState extends State<PasswordSubSection> {
  bool _passwordVisible=false;
GlobalKey<FormState>formKey=GlobalKey();
  @override
  Widget build(BuildContext context) {
    TextEditingController controller =TextEditingController();
    String? password;
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text('Password',style: Styles.textStyle16.copyWith(
          color: Colors.black
      ),),
      const SizedBox(height: 8,),
      TextFieldWithSuffix(
      onChanged: (String text) {
        password=text;
      }
      , icon:  Icon(
      _passwordVisible ? Icons.visibility : Icons
          .visibility_off
      )
      , obscureText: !_passwordVisible
      , onTap: () {
      setState(() {
      _passwordVisible=!_passwordVisible;
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

      ]
      ),
    );
  }
}
