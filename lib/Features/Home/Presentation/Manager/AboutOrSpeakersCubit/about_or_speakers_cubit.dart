import 'package:bloc/bloc.dart';


class AboutOrSpeakersCubit extends Cubit<bool> {
  AboutOrSpeakersCubit() : super(false);


  void changeColor(bool isAbout)
  {
    if(isAbout)
      emit(true);
    else
      emit(false);
     //isSpeaker=true;
  }



}
