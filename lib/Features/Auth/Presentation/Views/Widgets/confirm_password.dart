



import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_with_suffix_icon.dart';
import 'package:flutter/material.dart';

class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({Key? key, }) : super(key: key);

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  bool _passwordConfirmVisible=false;
  String? passwordConfirm;
  String? password;

  @override
  Widget build(BuildContext context) {
  TextEditingController controller=TextEditingController();

    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Confirm Password',style: Styles.textStyle16.copyWith(
            color: Colors.black
        ),),
        const SizedBox(height: 8,),
        TextFieldWithSuffix(
          onChanged: (String text )
          {
            passwordConfirm=text;
          }
          , icon:  Icon(
            _passwordConfirmVisible ? Icons.visibility_outlined : Icons
                .visibility_off_outlined
        )
          , obscureText: !_passwordConfirmVisible
          , onTap: () {
          setState(() {
            _passwordConfirmVisible=!_passwordConfirmVisible;
          });
        }, validator: (value ) {
          if(value!.isEmpty)
          {
            return '* Required';
          }
          if(value!=password)
          {
            return'password is not valid';
          }


        }, controller: controller,),
      ],
    );
  }
}
