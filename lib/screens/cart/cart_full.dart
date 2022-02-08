import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:shop_app_firebase/component/text_cart/text_cart.dart';
import 'package:shop_app_firebase/configs/colors.dart';

class CartFull extends StatelessWidget {
  const CartFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(16),
            topRight: Radius.circular(16),
          ),
          color: Theme.of(context).backgroundColor),
      child: Row(
        children: [
          Container(
            width: 130,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://m.media-amazon.com/images/I/81nC4u9eYfL._UY445_.jpg"),
                    fit: BoxFit.contain)),
          ),
          Flexible(
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        'Title',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 15),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(32),
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.delete,
                            size: 22,
                            color: AppColors.favColor,
                          ),
                        ),
                      ),
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                Row(
                  children: [
                    TextCart(
                      title: 'Price',
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    TextCart(
                      title: '450.0',
                      color: Theme.of(context).colorScheme.secondary,
                    )
                  ],
                ),
                Row(
                  children: [
                    TextCart(title: 'Sub Total'),
                    const SizedBox(
                      width: 5,
                    ),
                    TextCart(
                      title: '450\$',
                      color: Theme.of(context).colorScheme.secondary,
                    )
                  ],
                ),
                Row(
                  children: [
                    TextCart(
                      title: 'Ship Free',
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                     const Spacer(),
                     InkWell(
                      onTap: (){},
                      child: const Icon(
                        Icons.remove,
                        size: 22,
                        color: Colors.green,
                      ),
                    ),
                    Card(
                      elevation: 12,
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration:  const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              AppColors.gradiendFStart,
                              AppColors.gradiendFEnd,
                            ],
                          ),
                        ),
                        child: const TextNormal(title: 'Text',isCenter: true,),
                      ),
                    ),
                    InkWell(
                      onTap: (){},
                      child: const Icon(
                        Icons.add,
                        size: 22,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(width: 10,)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
