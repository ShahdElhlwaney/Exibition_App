


import 'package:flutter/material.dart';

class VerticalLine extends StatelessWidget {
  const VerticalLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: 36.27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.zero,
        color: Color(0xff031EA9B2).withOpacity(1)
      ),
    );
  }
}
