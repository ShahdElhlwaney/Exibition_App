import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bookmarks_state.dart';

class BookmarksCubit extends Cubit<BookmarksState> {
  BookmarksCubit() : super(BookmarksInitial());
  void isPressed(int isPessed)
  {
    if(isPessed==1)
      {
        emit(SessionsBookmarksState());
      }
    else if(isPessed==2)
    {
      emit(EventsBookmarksState());
    }
    else
      {
        emit(ExhibitorsBookmarksState());
      }
  }
}
