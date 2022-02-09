import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_firebase/screens/bottom_bar.dart';
import 'package:shop_app_firebase/screens/cart/cart_empty.dart';
import 'package:shop_app_firebase/screens/feeds/feeds.dart';
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
            return const BottomBarScreen();
          }
          if(state is EmptyCartState){
            return const CartEmpty();
          }
          if(state is FeedState){
            return const Feeds();
          }
          else {
            return Container();
          }
        },
      ),
    );
  }
}
