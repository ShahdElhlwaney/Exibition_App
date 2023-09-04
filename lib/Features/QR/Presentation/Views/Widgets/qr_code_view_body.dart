






import 'package:exibition/Features/Home/Presentation/Views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QrCodeBottomNavViewBody extends StatelessWidget {
  const QrCodeBottomNavViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomeView();


      Text('');/*AlertDialog(
        title: const Text('AlertDialog Title'),
    content: const SingleChildScrollView(
    child: ListBody(
    children: <Widget>[
    Text('This is a demo alert dialog.'),
    Text('Would you like to approve of this message?'),
    ],
    ),
    )
    );*/Alert(
      context: context,
      title: "RFLUTTER ALERT",
      desc: "Flutter is better with RFlutter Alert.",
      image: Image.asset("assets/success.png"),
    ).show();



    /* Center(
      child:   QrImageView(
        data: '1234567890',
        version: QrVersions.auto,
        size: 200.0, // Adjust the size as needed
      ) ,
    );*/

  }
}


