import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:shop_app_firebase/configs/colors.dart';

Widget userListTitle(
    String title,
    String subtitle,
    IconData icon,
    BuildContext context,
    ) {
  return InkWell(
    onTap: () {},
    splashColor: Theme.of(context).splashColor,
    child: ListTile(
      title: TextNormal(
        title: title,
        colors: AppColors.title,
      ),
      subtitle: TextNormal(
        title: subtitle,
        colors: AppColors.subTitle,
      ),
      leading: Icon(icon),
    ),
  );
}