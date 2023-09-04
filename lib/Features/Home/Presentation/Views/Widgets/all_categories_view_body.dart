


import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_category.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AllCategoriesViewBody extends StatelessWidget {
  const AllCategoriesViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const Padding(
           padding: EdgeInsets.only(top: 6,),
            child: PersonHeadSection(),
          ),
          const SizedBox(height: 26,),
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  GoRouter.of(context).pop();
                },
                  child: const Icon(Icons.arrow_back_ios_new,size: 20,)),
              const SizedBox(width: 65,),
              Text('All Categories',style: Styles.textStyle16.copyWith(
                color: ColorsApp.blackColor,
                fontWeight: FontWeight.w600
              ),),
              const Spacer()
            ],
          ),
          SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCategory(imageUrl: Assets.exhibitionsCategory
                , categoryName: 'Exhibitions',),
              CustomCategory(imageUrl: Assets.eventsCategory
                , categoryName: 'Events',),

              CustomCategory(imageUrl: Assets.whiteExhibitor
                , categoryName: 'Speakers',),

                       ],
          ),
          SizedBox(height: 24,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCategory(imageUrl: Assets.artWorkCategory
                , categoryName: 'Artwork',),
              SizedBox(width: 80,),
              CustomCategory(imageUrl: Assets.artistsCategory
                , categoryName: 'Artists',),
              Spacer()

            ],
          )
        ],
      ),
    );
  }
}
/**/