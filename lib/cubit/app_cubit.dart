import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import 'package:shop_app_firebase/configs/theme_data.dart';
import 'package:shop_app_firebase/cubit/app_cutbit_states.dart';

class AppCubit extends Cubit<CubitStates> {
  BuildContext context;
  AppCubit({required this.context}) : super(InitialState()) {
    emit(BottomBarState(themeData: Styles.themeData(false, context)));
  }
}
