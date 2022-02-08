import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_bold.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:shop_app_firebase/configs/colors.dart';
import 'package:shop_app_firebase/configs/images.dart';

import 'package:shop_app_firebase/model/theme_preference.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppImages.imgEmptyCart),
                fit: BoxFit.fill,
              ),
            ),
          ),
          TextBold(
            title: 'Your Cart Is Empty',
            size: 36,
            height: 1.5,
            colors: Theme.of(context).textSelectionTheme.selectionColor,
            isCenter: true,
          ),
          const SizedBox(
            height: 30.0,
          ),
          TextNormal(
            title: "Look Like You didn't \n add anything to your cart yet",
            isCenter: true,
            colors: DarkThemePreference.getThemeStatus() == true
                ? Theme.of(context).textSelectionTheme.selectionColor
                : AppColors.subTitle,
            size: 26,
            fontWeight: FontWeight.w600,
          ),
           Container(
            height: 40,
            width: 300,
            child:  const TextBold(title: 'SHOP NOW',height: 1.5, size: 26,colors: Colors.black,isCenter: true,),
             decoration: BoxDecoration(
               color: AppColors.favColor,
               borderRadius: BorderRadius.circular(20)
             ),
          )
        ],
      ),
    );
  }
}
