import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';

class Feeds extends StatefulWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  State<Feeds> createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 290,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: double.infinity,
              constraints: BoxConstraints(
                minHeight: 200,
                maxHeight: MediaQuery.of(context).size.height * 0.3,
              ),
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
              children: [
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Description',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '\$ 158.99',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w300),
                )
              ],
            ),
          ),
          Row(
            children: [
              Text(
                'Quantity: 12',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              InkWell(
                  onTap: () {},
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.green,
                  ),)
            ],
          )
        ],
      ),
    );
  }
}
