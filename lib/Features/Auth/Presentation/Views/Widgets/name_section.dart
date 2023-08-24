import 'package:exibition/Features/Person/Presentation/Views/Widgets/name_component.dart';
import 'package:flutter/material.dart';

class NameSection extends StatelessWidget {
  const NameSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        NameComponent(text: 'First Name', onChanged: (String ) {  },),
        NameComponent(text: 'Last Name', onChanged: (String ) {  },)

      ],
    );
  }
}
