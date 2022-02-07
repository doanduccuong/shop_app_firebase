import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextNormal(title: 'Search',),
      ),
    );
  }
}
