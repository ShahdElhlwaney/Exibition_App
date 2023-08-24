



import 'package:flutter/material.dart';
import '../../../../Core/Utils/colors.dart';
import 'Widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: ColorsApp.mainColor,
      body: SplashViewBody(),
    );
  }
}
