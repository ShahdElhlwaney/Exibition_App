

import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_category.dart';
import 'package:flutter/material.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 89,
      child:ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CustomCategory(imageUrl: Assets.exhibitionsCategory
            , categoryName: 'Exhibitions',),
          SizedBox(width: 16,),
          CustomCategory(imageUrl: Assets.eventsCategory
            , categoryName: 'Events',),
          SizedBox(width: 16,),

          CustomCategory(imageUrl: Assets.whiteExhibitor
            , categoryName: 'Speakers',),
          SizedBox(width: 16,),

          CustomCategory(imageUrl: Assets.artWorkCategory
            , categoryName: 'Artwork',),
          SizedBox(width: 16,),

          CustomCategory(imageUrl: Assets.artistsCategory
            , categoryName: 'Artists',),

        ],
        
      ),
    );
  }
}
