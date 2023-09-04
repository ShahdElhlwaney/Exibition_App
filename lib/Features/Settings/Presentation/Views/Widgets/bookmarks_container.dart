import 'package:exibition/Core/Utils/colors.dart';
import 'package:exibition/Core/Utils/styles.dart';
import 'package:exibition/Features/Home/Presentation/Manager/AboutOrSpeakersCubit/about_or_speakers_cubit.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/custom_session_details.dart';
import 'package:exibition/Features/Home/Presentation/Views/Widgets/events_item.dart';
import 'package:exibition/Features/Settings/Presentation/Manager/BookMarksCubit/bookmarks_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookMarksContainer extends StatelessWidget {
  const BookMarksContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookmarksCubit(),
      child: BlocBuilder<BookmarksCubit, BookmarksState>(
        builder: (context, state) {
          Color aboutContainerColor = state is SessionsBookmarksState? Colors.white : ColorsApp
              .mainColor;
          Color speakersContainerColor = state is EventsBookmarksState ? Colors.white : ColorsApp
              .mainColor;
          Color exhibitorsContainerColor = state is ExhibitorsBookmarksState ? Colors.white : ColorsApp
              .mainColor;
          Color aboutColorText = state is SessionsBookmarksState? ColorsApp.blackColor : Colors.white;
          Color speakersColorText = state  is EventsBookmarksState? ColorsApp.blackColor : Colors.white;
          Color exhibitorsColorText = state is ExhibitorsBookmarksState ? ColorsApp.blackColor : Colors.white;
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                height: 48,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                color: ColorsApp.mainColor,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.read<BookmarksCubit>().isPressed(1);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        color: aboutContainerColor,
                        width: 94,
                        height: 32,
                        child: Text('Sessions', style: Styles.textStyle14.copyWith(
                            color: aboutColorText,
                            fontWeight: FontWeight.w600
                        ),),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<BookmarksCubit>().isPressed(2);
                      },
                      child: Container(
                        color: speakersContainerColor,
                        alignment: Alignment.center,
                        width: 94,
                        height: 32,
                        child: Text('Events', style: Styles.textStyle14.copyWith(
                            color: speakersColorText,
                            fontWeight: FontWeight.w600
                        )
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        context.read<BookmarksCubit>().isPressed(3);
                      },
                      child: Container(
                        color: exhibitorsContainerColor,
                        alignment: Alignment.center,
                        width: 94,
                        height: 32,
                        child: Text(
                            'Exhibitors', style: Styles.textStyle14.copyWith(
                            color: exhibitorsColorText,
                            fontWeight: FontWeight.w600
                        )
                        ),
                      ),
                    )

                  ],
                ),
              ),
          state is SessionsBookmarksState?

           SizedBox(
             height: MediaQuery.of(context).size.height*.68,
             child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context,index){
          return CustomSessionDetails();
          }),
           ):state is EventsBookmarksState?
              SizedBox(
                height: MediaQuery.of(context).size.height*.68,
                child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (context,index){
                      return EventsItem();
                    }),
              ):
          Text('')

            ],
          );
        },
      ),
    );
  }
}