import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_firebase/configs/colors.dart';
import 'package:shop_app_firebase/model/theme_preference.dart';

class TextNormal extends StatelessWidget {
  final String title;
  final Color? colors;
  final double? size;
  final double? height;
  final bool? isCenter;
  final FontWeight? fontWeight;

  const TextNormal(
      {Key? key,
      required this.title,
      this.colors,
      this.size,
      this.height,
      this.isCenter,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: isCenter != null ? TextAlign.center : null,
      style: TextStyle(
        color: DarkThemePreference.getThemeStatus() == false
            ? AppColors.textColor
            : Colors.white,
        fontWeight: fontWeight ?? FontWeight.w400,
        fontStyle: FontStyle.normal,
        fontFamily: 'Poppins',
        fontSize: size ?? 17,
        height: height ?? 1.5,
      ),
    );
  }
}
