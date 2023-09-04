



import 'package:exibition/Features/QR/Presentation/Views/Widgets/qr_code_view_body.dart';
import 'package:flutter/material.dart';

class QrCodeBottomNavView extends StatelessWidget {
  const QrCodeBottomNavView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QrCodeBottomNavViewBody(),
    );
  }
}
