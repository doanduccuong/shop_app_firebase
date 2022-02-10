import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:shop_app_firebase/configs/images.dart';
import 'package:shop_app_firebase/cubit/app_cubit.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController=AnimationController(vsync: this,duration: Duration(milliseconds: 500));
    _animation=CurvedAnimation(parent: _animationController, curve: Curves.linear)..addListener(() {
      //print(_animation.value);
    });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedBuilder(
            builder: (BuildContext context, _) {
              return CachedNetworkImage(
                imageUrl:
                "https://images.ctfassets.net/hrltx12pl8hq/3MbF54EhWUhsXunc5Keueb/60774fbbff86e6bf6776f1e17a8016b4/04-nature_721703848.jpg?fit=fill&w=480&h=270",
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: imageProvider,
                        fit: BoxFit.contain,
                        colorFilter:
                        ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
                  ),
                ),
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) => Icon(Icons.error),
                alignment: FractionalOffset(_animation.value,0),

              );
            },
            animation: _animationController,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                InkWell(
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20)),
                    child: const TextNormal(title: 'Login', isCenter: true),
                  ),
                  onTap: () {
                    BlocProvider.of<AppCubit>(context).goLogInScreen();
                  },
                ),
                InkWell(
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(20)),
                    child: const TextNormal(
                      title: 'Sign Up',
                      isCenter: true,
                    ),
                  ),
                  onTap: () {
                    BlocProvider.of<AppCubit>(context).goSignUpScreen();
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  @override
  void dispose() {
    _animationController.dispose();
    // TODO: implement dispose
    super.dispose();

  }
}
