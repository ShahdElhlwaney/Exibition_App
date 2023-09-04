import 'package:exibition/Core/Utils/assets.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Home/Presentation/Manager/FavouriteCubite/favourite_cubit.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_date.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_time.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/favourite_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSessionDetails extends StatelessWidget {
  const CustomSessionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return


      Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: 380,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(Assets.sessionImage, width: MediaQuery
                      .of(context)
                      .size
                      .width, fit: BoxFit.cover,),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Innovative solutions for Modern Data \nCenter Considerations',
                      style: Styles.textStyle14.copyWith(
                          color: ColorsApp.blackColor,
                          fontWeight: FontWeight.w600
                      ),),
                  ),
                  SizedBox(height: 6,),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        Icon(FontAwesomeIcons.locationDot, color: ColorsApp
                            .isPressedColor,),
                        SizedBox(width: 4,),
                        Text('Hall 7', style: Styles.textStyle14.copyWith(
                          color: ColorsApp.isPressedColor,
                        ),),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
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
            child: BlocBuilder<FavouriteCubit, bool>(
              builder: (BuildContext context, state) {
                return Row(
                  children: [
                    const CustomDate(),
                    state ? FavouriteIcon(icon: Icons.favorite_border, colorIcon: ColorsApp.blackColor
                      , topPadding: 20, leftPadding: 235,)
                        : FavouriteIcon(icon: Icons.favorite, colorIcon: Colors.red
                      , topPadding: 20, leftPadding: 235,)
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

