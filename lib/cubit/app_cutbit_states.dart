import 'package:equatable/equatable.dart';
abstract class CubitStates extends Equatable{}

class InitialState extends CubitStates{
  @override

  // TODO: implement props
  List<Object?> get props => [];
}
class BottomBarState extends CubitStates{
  bool isDarkTheme;
  BottomBarState({required this.isDarkTheme});
  @override

  // TODO: implement props
  List<Object?> get props => [isDarkTheme];
}
class EmptyCartState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class FeedState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class LogInState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}
class SignUpState extends CubitStates{
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

