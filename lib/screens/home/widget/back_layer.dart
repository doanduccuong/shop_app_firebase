import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:shop_app_firebase/configs/colors.dart';
import 'package:shop_app_firebase/configs/images.dart';
import 'package:shop_app_firebase/cubit/app_cubit.dart';
import 'package:shop_app_firebase/cubit/app_cutbit_states.dart';

class BackLayer extends StatelessWidget {
  const BackLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  AppColors.staterColor,
                  AppColors.endColor,
                ],
                begin: const FractionalOffset(0, 0),
                end: const FractionalOffset(1, 0),
                stops: [0, 1.0]),
          ),
        ),
        Positioned(
          top: -100,
          left: 140,
          child: Transform.rotate(
            angle: -0.5,
            child: Container(

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.3),
              ),
              width: 150,
              height: 250,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 10.0,
          child: Transform.rotate(
            angle: -0.8,
            child: Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.3),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          right: 0,
          child: Transform.rotate(
            angle: -0.8,
            child: Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.3),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            margin: const   EdgeInsets.all(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(image: AssetImage(AppImages.imgCatWatches),fit: BoxFit.fill)
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    BlocProvider.of<AppCubit>(context).goFeedScreen();
                  },
                  child: Row(
                    children: [
                      TextNormal(title: 'Feed',size: 25,)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
