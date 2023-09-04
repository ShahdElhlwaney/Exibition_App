import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Home/Data/ViewModels/session_model.dart';
import 'package:exibition/Features/Home/Presentation/Manager/AboutOrSpeakersCubit/about_or_speakers_cubit.dart';
import 'package:exibition/Features/Home/Presentation/Manager/FavouriteCubite/favourite_cubit.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_date.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_time.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/favourite_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSession extends StatelessWidget {
  const CustomSession({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            width: 196,
            height: 234,
            decoration: BoxDecoration(
                border: Border.all(
                    color:
                    ColorsApp.borderColor)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(Assets.sessionImage,),
                SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text('Innovative solutions...',
                    style: Styles.textStyle14.copyWith(
                        color: ColorsApp.blackColor,
                        fontWeight: FontWeight.w600
                    ),),
                ),
                SizedBox(height: 4,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Text('Hall 7', style: Styles.textStyle14.copyWith(
                    color: ColorsApp.isPressedColor,
                  ),),
                ),
                SizedBox(height: 12,),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: CustomTime(),
                ),
              ],
            ),
          ),
        ),
        BlocProvider(
  create: (context) => FavouriteCubit(),
  child: BlocBuilder<FavouriteCubit,bool>(
    builder: (BuildContext context,state){
       return Row(
         children: [
           const CustomDate(),
           state ? /*Icon(Icons.add):Icon(Icons.ac_unit)*/
           FavouriteIcon(
             icon: Icons.favorite, colorIcon: Colors.red, topPadding: 14,leftPadding: 100,)
               : FavouriteIcon(
             icon: Icons.favorite_border,
             colorIcon: ColorsApp.blackColor, topPadding: 14, leftPadding: 100,)
         ],
       );
    },
  ),
),
        Padding(
          padding: const EdgeInsets.only(top: 54, left: 1),
          child: Image.asset(Assets.boxDate2),
        )
      ],
    );
  }
}



