import 'package:exibition/Features/Agenda/Presentation/Views/Widgets/agenda_view_body.dart';
import 'package:flutter/material.dart';

class AgendaView extends StatelessWidget {
  const AgendaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AgendaViewBody(),
    );
  }
}