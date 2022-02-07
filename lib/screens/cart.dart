import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextNormal(title: 'Cart',),
      ),
    );
  }
}
