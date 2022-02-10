import 'package:bloc/bloc.dart';
import 'package:shop_app_firebase/cubit/app_cutbit_states.dart';
import 'package:shop_app_firebase/model/theme_preference.dart';
import 'package:shop_app_firebase/screens/login/login_screen.dart';

class AppCubit extends Cubit<CubitStates> {
  AppCubit() : super(InitialState()) {
    emit(BottomBarState(isDarkTheme: DarkThemePreference.getThemeStatus()));
  }

   changeTheme(bool value) {
    emit(BottomBarState(isDarkTheme: value));
  }

   goEmptyScreen() {
    emit(EmptyCartState());
  }
   goFeedScreen() {
    emit(FeedState());
  }
   goLogInScreen() {
    emit(LogInState());
  }
  goSignUpScreen(){
    emit(SignUpState());
  }
}
