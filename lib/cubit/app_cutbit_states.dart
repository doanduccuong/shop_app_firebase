import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_firebase/configs/theme_data.dart';

abstract class CubitStates extends Equatable{}

class InitialState extends CubitStates{
  @override

  // TODO: implement props
  List<Object?> get props => [];
}
class BottomBarState extends CubitStates{
  ThemeData themeData;
  BottomBarState({required this.themeData});
  @override

  // TODO: implement props
  List<Object?> get props => [themeData];
}

class ChangeThemeState extends CubitStates{

  late final Styles themeData;
  ChangeThemeState({required this.themeData});
  @override
  // TODO: implement props
  List<Object?> get props => [themeData];
}