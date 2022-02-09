import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:backdrop/backdrop.dart';
import 'package:shop_app_firebase/configs/colors.dart';
import 'package:shop_app_firebase/screens/feeds/widgets/carousel.dart';
import 'package:shop_app_firebase/screens/feeds/widgets/swiper.dart';

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
          backLayer: const Center(
            child: Text('back layer'),
          ),
          frontLayer: Column(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                child: Carousel(),
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
              Container(height: 190, width: double.infinity, child: Swiper())
            ],
          ),
        ),
      ),
    );
  }
}
