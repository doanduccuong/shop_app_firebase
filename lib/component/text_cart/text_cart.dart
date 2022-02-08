import 'package:flutter/material.dart';
import 'package:shop_app_firebase/model/theme_preference.dart';

class TextCart extends StatelessWidget {
  String title;
  Color? color;
   TextCart({
    Key? key,
     this.color,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: DarkThemePreference.getThemeStatus()==false?Colors.brown.shade900: color??Theme.of(context).primaryColor
      ),
    );
  }
}
