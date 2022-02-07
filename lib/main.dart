import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_firebase/configs/theme_data.dart';
import 'package:shop_app_firebase/cubit/app_cubit.dart';
import 'package:shop_app_firebase/cubit/app_cubit_logic.dart';
import 'package:shop_app_firebase/screens/bottom_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<AppCubit>(
        create: (context) => AppCubit(context: context),
        child: const AppCubitLogics(),
      ),
    );
  }
}
