import 'package:exibition/Features/Auth/Presentation/Views/Widgets/name_component.dart';
import 'package:flutter/material.dart';

class NameSection extends StatelessWidget {
  const NameSection({Key? key, required this.firstNameController, required this.lastNameController}) : super(key: key);
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        NameComponent(text: 'First Name', onChanged: (String ) {  }
          , nameController: firstNameController,),
        NameComponent(text: 'Last Name', onChanged: (String ) {  }
          , nameController: lastNameController,)

      ],
    );
  }
}
