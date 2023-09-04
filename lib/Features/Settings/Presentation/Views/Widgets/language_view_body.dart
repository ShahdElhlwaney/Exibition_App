





import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_row.dart';
import 'package:flutter/material.dart';

class LanguageViewBody extends StatefulWidget {
  const LanguageViewBody({Key? key}) : super(key: key);

  @override
  State<LanguageViewBody> createState() => _LanguageViewBodyState();
}

class _LanguageViewBodyState extends State<LanguageViewBody> {
  int selectedOption = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
      children: [
        PersonHeadSection(),
        SizedBox(height: 16,),
        HeadRow(head: 'Language',),
        SizedBox(height: 16,),
         RadioListTile(
           activeColor: ColorsApp.mainColor,
           title: Text('English',style: Styles.textStyle14.copyWith(
             color: ColorsApp.blackColor
           ),),
             value: 1
             , groupValue: selectedOption
             , onChanged: (value){
           setState(() {
             selectedOption=value!;
           });
         }
         ),
        RadioListTile(
            dense: true,

            activeColor: ColorsApp.mainColor,
            title: Text('Arabic',style: Styles.textStyle14.copyWith(
                color: ColorsApp.blackColor
            )),
            value: 2
            , groupValue: selectedOption
            , onChanged: (value){
              setState(() {
                selectedOption=value!;
              });
        }
        ),


      ],
      ),
    );
  }
}
