import 'package:bloc/bloc.dart';
import 'package:shop_app_firebase/cubit/app_cutbit_states.dart';
import 'package:shop_app_firebase/model/theme_preference.dart';

class AppCubit extends Cubit<CubitStates> {

  AppCubit() : super(InitialState()) {

    emit(BottomBarState(isDarkTheme: DarkThemePreference.getThemeStatus()));
  }

  void changeTheme(bool value){
    emit(BottomBarState(isDarkTheme: value));
  }
}
