


import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  ImageScreen({super.key, required this.imageUrl,});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
          image:  DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imageUrl))
      ),
    );
  }
}