import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:shop_app_firebase/configs/colors.dart';
import 'package:shop_app_firebase/configs/constant.dart';

class ProductCategory extends StatelessWidget {
  int index;
  ProductCategory({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                  image: AssetImage(Constants.category[index].images),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 8),
            height: 30,
            child: TextNormal(
              title: Constants.category[index].title,
            ),
          )
        ],
      ),
    );
  }
}
