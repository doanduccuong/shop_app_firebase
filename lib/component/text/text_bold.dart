import 'package:flutter/cupertino.dart';
import 'package:shop_app_firebase/configs/colors.dart';


class TextBold extends StatelessWidget {
  final String title;
  final Color? colors;
  final double size;
  final double height;
  final bool? isCenter;

  const TextBold(
      {Key? key,
        required this.title,
        this.colors,
        required this.size,
        required this.height,
        this.isCenter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: isCenter != null ? TextAlign.center : null,
      style: TextStyle(
        color: colors?? AppColors.textColor,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        fontFamily: 'Poppins',
        fontSize: size,
        height: height,
      ),
    );
  }
}