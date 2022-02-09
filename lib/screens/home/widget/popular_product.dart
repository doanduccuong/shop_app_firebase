import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:shop_app_firebase/configs/images.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: 250,
      height: 270,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 170,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage(AppImages.imgCatWatches),
                  ),
                ),
              ),
              const Positioned(
                right: 12,
                top: 10,
                child: Icon(
                  Icons.star,
                  size: 20,
                  color: Colors.white
                ),
              ),
               Positioned(
                 top: 120,
                 right: 12,
                 child: Container(
                   width: 40,
                  child: const TextNormal(title: 'Price',isCenter: true,size: 15,),
                   decoration: const BoxDecoration(
                     color: Colors.white
                   ),
              ),
               )
            ],
          ),
          const TextNormal(title: 'Title',fontWeight: FontWeight.w800,size: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextNormal(title: 'Description',size: 18,),
              Icon(Icons.shopping_cart)
            ],
          )
        ],
      ),
    );
  }
}
