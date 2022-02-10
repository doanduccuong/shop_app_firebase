import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:shop_app_firebase/cubit/app_cubit.dart';
import 'package:shop_app_firebase/cubit/app_cubit_logic.dart';

import 'package:shop_app_firebase/model/theme_preference.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DarkThemePreference.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Future<FirebaseApp> _intialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _intialization,
      builder: (context, snapshot) {
        return MaterialApp(
          home: BlocProvider<AppCubit>(
              create: (context) => AppCubit(), child: const AppCubitLogics()),
        );
      },
    );
  }
}
