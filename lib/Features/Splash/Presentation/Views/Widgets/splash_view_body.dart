


import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/Widgets/head_section.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();

}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(
        const Duration(
           seconds: 10,
    ),
        (){
         GoRouter.of(context).push(AppRouter.kOnBoardingView);
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return   const HeadSection(crossAxisAlignment: CrossAxisAlignment.center
      , mainAxisAlignment: MainAxisAlignment.center,);
  }
}
