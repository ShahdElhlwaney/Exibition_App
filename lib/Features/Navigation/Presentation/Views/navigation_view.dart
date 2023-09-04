


import 'package:exibition/Features/Navigation/Presentation/Views/Widgets/navigation_view_body.dart';
import 'package:flutter/material.dart';

class NavigationView extends StatelessWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: NavigationViewBody(),
    );
  }
}
