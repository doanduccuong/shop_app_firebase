import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:backdrop/backdrop.dart';
import 'package:shop_app_firebase/configs/colors.dart';
import 'package:shop_app_firebase/configs/constant.dart';

import 'package:shop_app_firebase/screens/feeds/widgets/swiper.dart';
import 'package:shop_app_firebase/screens/home/widget/back_layer.dart';
import 'package:shop_app_firebase/screens/home/widget/popular_product.dart';
import 'package:shop_app_firebase/screens/home/widget/product_category.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Carousel(),
      body: Center(
        child: BackdropScaffold(
          appBar: BackdropAppBar(
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.staterColor,
                    AppColors.endColor,
                  ],
                ),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/photos/tran-quoc-pagoda-picture-id481045024?b=1&k=20&m=481045024&s=170667a&w=0&h=dTPied9XNFB5zMkLsZwvP0zns2O_eNr-uixVx56yXDQ='),
                  ),
                ),
              )
            ],
            title: const Text('This is back drop app bar'),
          ),
          backLayer: BackLayer(),
          frontLayer: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: Colors.grey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text('Popular brands',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 23),),
                      Text('View all',style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),)
                    ],

                  ),
                  //Swiper section
                  Container(
                    margin: const EdgeInsets.only(top: 10,bottom: 10),
                    height: 210,
                    width: MediaQuery.of(context).size.width * 0.95,
                    child: const Swiper(),
                  ),
                  const Text('Categories',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 23),),
                  const SizedBox(height: 15,),
                  // ProductCategory section
                  Container(
                    height: 180,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Constants.category.length,
                        itemBuilder: (context, index) {
                      return ProductCategory(index: index,);
                    }),
                  ),

                  //Carousel section
                  // const SizedBox(
                  //   height: 190,
                  //   width: double.infinity,
                  //   child: Carousel(),
                  // ),
                  const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Popular brands',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 23),),
                  Text('View all',style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),)
                ],

              ),
                  const SizedBox(height: 15,),

                  Container(
                    width: double.infinity,
                    height: 270,
                    child: ListView.builder(
                      itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                      return PopularProduct();
                    }),
                  ),


                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const TextNormal(
                          title: 'Popular',
                          fontWeight: FontWeight.w800,
                          size: 20,
                        ),
                        InkWell(
                          child: const TextNormal(
                            title: 'View all...',
                            fontWeight: FontWeight.w800,
                            size: 15,
                            colors: Colors.red,
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 50,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
