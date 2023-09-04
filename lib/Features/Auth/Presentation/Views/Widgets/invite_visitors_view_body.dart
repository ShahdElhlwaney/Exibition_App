import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/email_text_field.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_row.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InviteVisitorsViewBody extends StatefulWidget {
  const InviteVisitorsViewBody({Key? key}) : super(key: key);

  @override
  State<InviteVisitorsViewBody> createState() => _InviteVisitorsViewBodyState();
}

class _InviteVisitorsViewBodyState extends State<InviteVisitorsViewBody> {
  TextEditingController controller=TextEditingController();
  int count=1;
  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PersonHeadSection(),
          SizedBox(height: 24,),
          HeadRow(head:'Invite Visitors' ),
          SizedBox(height: 24,),
          Text('Email',style: Styles.textStyle16.copyWith(
              color: Colors.black
          ),),
          Expanded(
            child: ListView.builder(
              itemCount: count,
                itemBuilder: (context,inde){
                  return EmailTextField(
                    onChanged: (String ) {  }
                    , validator: (String? t ) {  }
                    , controller: controller
                      ,hintText: 'Enter user email');
                }),
          ),
          SizedBox(height: 19,),
          Row(
            children: [
              Icon(Icons.add,size: 24,),
              SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    count+=1;
                  });
                }, child: Text('Add email',style: Styles.textStyle14.copyWith(
                  color: ColorsApp.mainColor
                ),),
              ),
            ],
          ),
          Spacer(),
          Button(text: 'Invite', onPressed: () {
            GoRouter.of(context).push(AppRouter.kSuccessInvitingView);
          },width:MediaQuery.of(context).size.width ,)
        ],
      ),
    );
  }
}
