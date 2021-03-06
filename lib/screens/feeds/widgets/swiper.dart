import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_firebase/configs/constant.dart';
class Swiper extends StatelessWidget {
  const Swiper({Key? key}) : super(key: key);

  get callbackFunction => null;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.grey,
        child: CarouselSlider(

          items: List.generate(
            Constants.swiperImages.length,
                (index) {
              return Container(

                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      Constants.swiperImages[index],
                    ),
                  ),
                ),
              );
            },
          ),
          options: CarouselOptions(
            height: 400,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
