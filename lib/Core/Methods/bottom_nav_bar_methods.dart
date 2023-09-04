


import 'package:exibition/Core/Methods/qr_code_visitor_alert.dart';
import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Agenda/Presentation/Views/agenda_view.dart';
import 'package:exibition/Features/Home/Presentation/Views/home_view.dart';
import 'package:exibition/Features/Navigation/Presentation/Views/navigation_view.dart';
import 'package:exibition/Features/QR/Presentation/Views/qr_code_bottom_nav_view.dart';
import 'package:exibition/Features/Settings/Presentation/Views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

List<Widget> BuildScreens() {
  return const [
    HomeView(), AgendaView()
    , QrCodeBottomNavView(),
    NavigationView(),
    SettingView(),
  ];
}


List<PersistentBottomNavBarItem> NavBarsItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      icon: Image.asset(Assets.homeIcon), //Icon(CupertinoIcons.home),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset(Assets.agendaIcon), //Icon(CupertinoIcons.home),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(

      icon: GestureDetector(
        onTap: () {
          QrCodeVisitorAlert(context);
        },
        child: Container(
          padding: EdgeInsets.all(7),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Image.asset(Assets.qrIcon,),

        ),
      ),

      activeColorPrimary: ColorsApp.mainColor,
      inactiveColorPrimary: ColorsApp.mainColor,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset(Assets.navigationIcon),
      //Icon(CupertinoIcons.settings),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: Image.asset(Assets.settingIcon), // Icon(CupertinoIcons.settings),
     // title: ("."),
      activeColorPrimary: Colors.blue,
      inactiveColorPrimary: Colors.white,
    ),
  ];
}