



import 'package:exibition/Features/Home/Presentation/Manager/FavouriteCubite/favourite_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteIcon extends StatelessWidget {
  const FavouriteIcon({Key? key, required this.icon, required this.colorIcon, required this.topPadding, required this.leftPadding}) : super(key: key);
  final IconData icon;
  final Color colorIcon;
  final double topPadding;
  final double leftPadding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        BlocProvider.of<FavouriteCubit>(context).AddToFavourite();
      },
        child: Padding(
          padding:  EdgeInsets.only(left: leftPadding,top: topPadding),
          child: Container(

             // margin:EdgeInsets.only(left:leftPadding,top: topPadding ) ,
            width: 32,
              height: 32,
              decoration: BoxDecoration(
                  color: Colors.white,

                  shape: BoxShape.circle
              ),
              child: Icon(icon,color: colorIcon,)),
        ));
  }
}
