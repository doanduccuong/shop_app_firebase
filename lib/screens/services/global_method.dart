
import 'package:flutter/material.dart';

class GlobalMethods{
  Future<void> authErrorHandling( String subtitle, BuildContext context) async {
    showDialog(
        context: context,
        builder: (BuildContext ctx) {
          return AlertDialog(
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 6.0),
                  child: Image.network(
                    'https://image.flaticon.com/icons/png/128/564/564619.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Error'),
                ),
              ],
            ),
            content: Text(subtitle),
            actions: [

              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('ok'))
            ],
          );
        });
  }
}