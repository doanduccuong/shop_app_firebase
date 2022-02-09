import 'package:flutter/material.dart';
import 'package:shop_app_firebase/configs/images.dart';
import 'package:shop_app_firebase/model/category_model.dart';

class Constants {
  static const List<IconData> userTitleIcons = [
    Icons.email,
    Icons.phone,
    Icons.local_shipping,
    Icons.watch_later,
    Icons.exit_to_app_rounded
  ];
  static const List<String> carouseImages = [
    AppImages.imgCarousel1,
    AppImages.imgCarousel2,
    AppImages.imgCarousel3,
    AppImages.imgCarousel4,
  ];
  static const List<String> swiperImages = [
    AppImages.imgApple,
    AppImages.imgDell,
    AppImages.imgSamSung,
    AppImages.imgDell,
    AppImages.imgHM,
    AppImages.imgHuawei,
    AppImages.imgNike,
  ];
  static  List<CategoryModel> category=[
     CategoryModel(images: AppImages.imgCatBeauty, title: 'Beauty'),
    CategoryModel(images: AppImages.imgCatFurniture, title: 'Furniture'),
    CategoryModel(images: AppImages.imgCatLaptops, title: 'Laptops'),
    CategoryModel(images: AppImages.imgCatShoes, title: 'Shoes'),
    CategoryModel(images: AppImages.imgCatWatches, title: 'Watches'),



    // AppImages.imgCatClothes,
    // AppImages.imgCatFurniture,
    // AppImages.imgCatLaptops,
    // AppImages.imgCatPhones,
    // AppImages.imgCatShoes,
    // AppImages.imgCatWatches,
  ];
}
