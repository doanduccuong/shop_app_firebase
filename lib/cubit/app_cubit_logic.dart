import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_firebase/screens/bottom_bar.dart';
import 'package:shop_app_firebase/screens/cart/cart_empty.dart';
import 'package:shop_app_firebase/screens/feeds/feeds.dart';
import 'package:shop_app_firebase/screens/landing_page/landing_page.dart';
import 'package:shop_app_firebase/screens/login/login_screen.dart';
import 'package:shop_app_firebase/screens/sign_up_screen/sign_up_screen.dart';
import 'app_cubit.dart';
import 'app_cutbit_states.dart';
class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  _AppCubitLogicsState createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocBuilder<AppCubit,CubitStates>(
        builder: (context,state){
          if(state is BottomBarState){
            return const LandingPage();
          }
          if(state is EmptyCartState){
            return const CartEmpty();
          }
          if(state is FeedState){
            return const Feeds();
          }
          if(state is LogInState){
            return  const LoginScreen();
          }
          if(state is SignUpState){
            return   SignUpScreen();
          }
          else {
            return Container();
          }
        },
      ),
    );
  }
}
