import 'package:bloc/bloc.dart';


class FavouriteCubit extends Cubit<bool> {
  FavouriteCubit() : super(false);


  bool isFavourite=false;
  void AddToFavourite()
  {
    isFavourite=!isFavourite;
    emit(isFavourite);
  }
}
