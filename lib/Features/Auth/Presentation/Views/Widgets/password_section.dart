import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/password_sub_section.dart';
import 'package:exibition/Features/Person/Presentation/Views/Widgets/text_field_with_suffix_icon.dart';
import 'package:flutter/material.dart';
class PasswordSection extends StatefulWidget {
  const PasswordSection({Key? key}) : super(key: key);
  @override
  State<PasswordSection> createState() => _PasswordSectionState();
}
class _PasswordSectionState extends State<PasswordSection> {
  //bool _passwordVisible=false;
  bool _passwordConfirmVisible=false;
  String? password;
  String? passwordConfirm;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PasswordSubSection()
      /*  Text('Password',style: Styles.textStyle16.copyWith(
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

          },
        ),*/
        ,const SizedBox(height: 24,),
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
              _passwordConfirmVisible ? Icons.visibility : Icons
                  .visibility_off
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


          },),
      ],
    );
  }
}
