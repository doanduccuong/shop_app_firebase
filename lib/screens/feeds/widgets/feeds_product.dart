import 'package:flutter/material.dart';
import 'package:shop_app_firebase/configs/colors.dart';
import 'package:shop_app_firebase/screens/feeds/widgets/swiper.dart';

class FeedsProduct extends StatelessWidget {
  const FeedsProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 200,
          height: 270,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Image.network(
                    'https://m.media-amazon.com/images/I/81nC4u9eYfL._UY445_.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 5),
                margin: const EdgeInsets.only(left: 5, bottom: 2, right: 3),
                child: Column(
                  children: const [
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Description',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '\$ 158.99',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '  Quantity: 12',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.green,
                      size: 25,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
                colors: [
                  AppColors.staterColor,
                  AppColors.endColor,
                ],
                begin: FractionalOffset(0, 0),
                end: FractionalOffset(1, 0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: const Text(
            'New',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
