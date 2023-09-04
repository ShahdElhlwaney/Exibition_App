




import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/button_with_border.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/email_text_field.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_row.dart';
import 'package:exibition/Features/Navigation/Presentation/Views/Widgets/select_text_field.dart';
import 'package:exibition/Features/OnBoarding/Presentation/Views/Widgets/get_started_button.dart';
import 'package:flutter/material.dart';

class AdvancedSearchViewBody extends StatelessWidget {
  const AdvancedSearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();
    return Padding(
      padding: const EdgeInsets.only(left: 24,right: 24,top: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PersonHeadSection(),
            SizedBox(height: 16,),
            HeadRow(head: 'Advanced Search'),
            SizedBox(height: 24,),
            Text('Find Showcase',style: Styles.textStyle14.copyWith(
                color: ColorsApp.blackColor,
                fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 8,),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: EmailTextField(onChanged: (String ) {  }
                , validator: (String?t ) {  }
                , controller: controller,
                hintText: 'Enter user email',
              ),
            ),
            SizedBox(height: 24,),
            Divider(),
            SizedBox(height: 24,),
            Text('Starting from',style: Styles.textStyle14.copyWith(
              color: ColorsApp.blackColor,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 8,),
            SelectTextField(),
            SizedBox(height: 16,),
            Text('Going to',style: Styles.textStyle14.copyWith(
                color: ColorsApp.blackColor,
                fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 8,),
            SelectTextField(),
            SizedBox(height: 24,),
            Divider(),
            SizedBox(height: 24,),
            Text('Switch map',style: Styles.textStyle14.copyWith(
                color: ColorsApp.blackColor,
                fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 8,),
            SelectTextField(),
            SizedBox(height: 80,),
            Button(text: 'Confirm', onPressed: () {  }
              ,width: MediaQuery.of(context).size.width,),
             SizedBox(height: 16,),
             ButtonWithBorder(onTap: (){},text: 'Reset',),
            SizedBox(height: 24,)
          ],
        ),
      ),
    );
  }
}
