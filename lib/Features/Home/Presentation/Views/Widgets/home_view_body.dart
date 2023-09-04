



import 'package:exibition/Core/Utils/app_router.dart';
import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/person_head_section.dart';
import 'package:exibition/Features/Auth/Presentation/Views/Widgets/text_field_without_suffix_icon.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/categories_list_view.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_notification_button.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_session.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/events_item.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/events_news_column.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/home_search_text_field.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/image_profile_row.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/page_view.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/see_all_row.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/sessions_list_view.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/speakers_column.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return    SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            const ImageProfileRow(),
            const SizedBox(height: 17,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: HomeSearchTextField(onChanged: (String ) {  },)),
                const SizedBox(width: 12,),
                const CustomNotificationButton()
              ],
            ),
            const SizedBox(height: 16,),
            const CustomPageView(),
            const SizedBox(height: 24,),
            SeeAllRow(text: 'Categories', onTap: () {
              GoRouter.of(context).push(AppRouter.kAllCategoriesView);
            },),
            SizedBox(height: 16,),
            CategoriesListView(),
           SizedBox(height: 24,),
            SeeAllRow(text: 'Sessions', onTap: () {  },),
            SizedBox(height: 8,),
            SessionListView(),
            SizedBox(height: 10,),
            SeeAllRow(text: 'Speakers', onTap: () {  },),
            SizedBox(height: 16,),
            SpeakersColumn(),
            SizedBox(height: 24,),
            SeeAllRow(text: 'Events News', onTap: () {  },),
            SizedBox(height: 16,),
            EventsNewsColumn()





          ],
        ),
      ),
    );
  }
}


