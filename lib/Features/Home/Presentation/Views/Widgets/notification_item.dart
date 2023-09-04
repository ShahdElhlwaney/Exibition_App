




import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/profile_notifications_image.dart';
import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
     // width: MediaQuery.of(context).size.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProfileNotificationsProfile(),
          Column(
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: Text('An Upcoming Event missed out!'
                  ,style: Styles.textStyle14.copyWith(
                    color: ColorsApp.blackColor,
                    fontWeight: FontWeight.w600
                  ),),
              ),
              SizedBox(height: 4,),
              Padding(
                padding: const EdgeInsets.only(left: 13),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width-109,
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('The Transport Technology Event '
                          '– now a \nspin off as the largest'
                        ,style:Styles.textStyle14.copyWith(
                          color: ColorsApp.blackColor,
                          fontSize: 10
                        ) ,),
                    //  Spacer(),
                      Text('10 Hrs ago.',style: Styles.textStyle14.copyWith(
                        color: ColorsApp.borderColor,
                        fontSize: 12
                      ),)

                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
