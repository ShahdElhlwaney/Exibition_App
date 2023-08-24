



import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class Arabian extends StatelessWidget {
  const Arabian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      width: 89,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white)
      ),
      child: Text('العربية',style: Styles.textStyle15,),
    );
  }
}
