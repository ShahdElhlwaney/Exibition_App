



import 'package:exibition/Features/Agenda/Presentation/Views/Widgets/vertical_line.dart';
import 'package:flutter/material.dart';

class CustomAgenda extends StatelessWidget {
  const CustomAgenda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('09:00 am'),
        SizedBox(width: 18,),
        Expanded(
          child: SizedBox(
            height: 70,
            child: ListView.builder(
              itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16),
                        color: Color(0xff47DEFF1A).withOpacity(.1),
                        width: 195,
                        height: 68,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text('Innovative solutions...',),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 12),
                              child: Text('Hall 7'),
                            ),

                          ],
                        ),
                      ),
                      VerticalLine()
                    ],
                  );
                }),
          ),
        )
      ],
    );
  }
}
