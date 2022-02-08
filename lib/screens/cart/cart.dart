import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_bold.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:shop_app_firebase/screens/cart/cart_empty.dart';
import 'package:shop_app_firebase/screens/cart/cart_full.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List products = [];

    return Scaffold(
      body: !products.isEmpty
          ? const CartEmpty()
          : Scaffold(
              bottomSheet: checkoutSection(),
              appBar: AppBar(
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.restore_from_trash_outlined,
                        color: Colors.black,
                      ))
                ],
                title: const TextNormal(
                  title: 'Cart Item Count',
                ),
              ),
              body:  ListView.builder(itemBuilder: (context,index){
                return CartFull();
              }),
            ),
    );
  }

  Widget checkoutSection() {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey, width: 0.5),
        ),
      ),
      child: Row(
        children: [
          InkWell(
            child: Container(
              width: 170,
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(8),
              child:  const TextNormal(
                title: 'Check Out',
                isCenter: true,
              ),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          const Spacer(),
          TextNormal(title: 'Total'),
          SizedBox(width: 10,),
          TextBold(title: 'Us \$179.0',colors: Colors.blue, height: 1.5, size: 20,),

        ],
      ),
    );
  }
}
