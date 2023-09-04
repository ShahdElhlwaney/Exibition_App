


import 'package:exibition/Features/Auth/Presentation/Views/Widgets/qr_code_view_body.dart';
import 'package:flutter/material.dart';

class QrCodeView extends StatelessWidget {
  const QrCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QrCodeViewBody(),
    );
  }
}
