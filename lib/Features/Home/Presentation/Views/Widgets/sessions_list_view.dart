


import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_session.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SessionListView extends StatelessWidget {
  const SessionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.38,
      child: ListView.builder(
         itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: (){
                GoRouter.of(context).push(AppRouter.kSessionDetailsView);
              },
                child: CustomSession());

        },


      ),
    );
  }
}
