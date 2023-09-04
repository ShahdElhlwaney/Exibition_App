


import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class ManualDatePicker extends StatelessWidget {
  const ManualDatePicker({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime current = DateTime.now();/// 1/9/2023

    return   Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1,
                color: ColorsApp.blackColor,
              ),
            ),
            SizedBox(width: 12,),
            Text(_getMonthName(current.month),style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorsApp.blackColor
            ),),
            Text(' '+current.year.toString(),style: Styles.textStyle14.copyWith(
    fontWeight: FontWeight.w600,
    color: ColorsApp.blackColor
    )),
          ],
        ),

        SizedBox(
          height: 83,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: _buildCalendarDays(),
          ),
        ),
      ],
    );
  }
  List<Widget> _buildCalendarDays() {
    DateTime currentDate = DateTime.now();/// 1/9/2023
    print(currentDate.day);
    List<Widget> calendarDays = [];
    for (int i = -365; i <= 365; i++) {
      DateTime date = currentDate.add(Duration(days: i));
      calendarDays.add(_buildDayTile(date));
    }
    return calendarDays;
  }
  Widget _buildDayTile(DateTime date) {
    return Container(
      alignment: Alignment.center,
      width: 70,
      margin: EdgeInsets.all(5),
      //padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color:date.day==DateTime.now().day?ColorsApp.isPressedColor.withOpacity(.4)
            :Colors.white,
        borderRadius: BorderRadius.zero,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 6,),
          Text(
              '${date.day}',
              style: Styles.textStyle16.copyWith(
                  color: ColorsApp.blackColor,
                  fontWeight: FontWeight.w600
              )),
          Text(
            '${_getMonthCompleteName(date.month)} ',
            textAlign: TextAlign.center,
            style: Styles.textStyle16.copyWith(
                color: ColorsApp.blackColor,
                fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(height: 8,),
          date.day==DateTime.now().day?
          Icon(Icons.circle_sharp,size: 6,):Text('',),
        ],
      ),
    );
  }
  String _getMonthName(int month) {
    final months = [
      'January', 'February', 'March', 'April',
      'May', 'June', 'July', 'August',
      'September', 'October', 'November', 'December',
    ];
    return months[month - 1];
  }
  String _getMonthCompleteName(int month) {
    final monthsName = [
      'Jan', 'Feb', 'Mar', 'Apr',
      'May', 'Jun', 'Jul', 'Aug',
      'Sep', 'Oct', 'Nov', 'Dec',
    ];
    return monthsName[month - 1];
  }
}
