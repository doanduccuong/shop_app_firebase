import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shop_app_firebase/configs/theme_data.dart';
import 'package:shop_app_firebase/cubit/app_cubit.dart';
import 'package:shop_app_firebase/cubit/app_cubit_logic.dart';
import 'package:shop_app_firebase/cubit/app_cutbit_states.dart';
import 'package:shop_app_firebase/model/theme_preference.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DarkThemePreference.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppCubit>(
      create: (context) => AppCubit(),
      child: BlocBuilder<AppCubit, CubitStates>(builder: (context, state) {
        if (state is BottomBarState) {
          var isDarkTheme = state.isDarkTheme;
          return MaterialApp(
            title: 'Shopping App Fire Base',
            theme: Styles.themeData(isDarkTheme, context),
            home: const AppCubitLogics(),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}
