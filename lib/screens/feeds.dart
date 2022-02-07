import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
class Feeds extends StatelessWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextNormal(title: 'Feeds',),
      ),
    );
  }
}
