import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_session_details.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/head_row.dart';
import 'package:exibition/Features/Settings/Presentation/Manager/BookMarksCubit/bookmarks_cubit.dart';
import 'package:exibition/Features/Settings/Presentation/Views/Widgets/bookmarks_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBookMarksViewBody extends StatelessWidget {
  const MyBookMarksViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          PersonHeadSection(),
          SizedBox(height: 16,),

          HeadRow(head: 'My Bookmarks'),
          SizedBox(height: 32,),
          BookMarksContainer(),

        ],
      ),
    );
  }
}
