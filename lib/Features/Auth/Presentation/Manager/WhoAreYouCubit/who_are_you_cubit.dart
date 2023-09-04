import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'who_are_you_state.dart';

class WhoAreYouCubit extends Cubit<WhoAreYouState> {
  WhoAreYouCubit() : super(WhoAreYouInitial());



  void youAre(bool isExhipitor)
  {
    if(isExhipitor)
      {
        emit(IsExhibitorState());
      }
    else
      {
        emit(IsVisitorState());
      }
  }
}
