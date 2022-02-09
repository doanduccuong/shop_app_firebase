import 'package:flutter/material.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:shop_app_firebase/configs/colors.dart';

import 'package:shop_app_firebase/screens/cart/cart.dart';
import 'package:shop_app_firebase/screens/feeds/feeds.dart';
import 'package:shop_app_firebase/screens/search.dart';
import 'package:shop_app_firebase/screens/user_info/user_info.dart';
import 'home.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late List<Map<String, Widget>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = const [
      {
        'page': Home(),
        'title': TextNormal(
          title: 'Home Screen',
        )
      },
      {
        'page': Feeds(),
        'title': TextNormal(
          title: 'Feed Screen',
        )
      },
      {
        'page': Search(),
        'title': TextNormal(
          title: 'Search Screen',
        )
      },
      {
        'page': Cart(),
        'title': TextNormal(
          title: 'Cart Screen',
        )
      },
      {
        'page': UserInfo(),
        'title': TextNormal(
          title: 'User Info Screen',
        )
      },
    ];
    // TODO: implement initState
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: kBottomNavigationBarHeight * 0.98,
          child: Container(
            decoration: const BoxDecoration(
              color: AppColors.textColor,
              border: Border(
                top: BorderSide(
                  color: AppColors.aPrimaryColor,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              onTap: (index) {
                _selectedPage(index);
              },
              backgroundColor: Theme.of(context).primaryColor,
              unselectedItemColor: Colors.grey,
              selectedItemColor: AppColors.selectedColor,
              selectedLabelStyle: const TextStyle(fontSize: 14),
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.rss_feed),
                  label: 'Feeds',
                ),
                BottomNavigationBarItem(
                    icon: Icon(null), activeIcon: null, label: 'Search'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'User',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          hoverElevation: 10,
          elevation: 4,
          child: const Icon(Icons.search),
          splashColor: AppColors.aPrimaryColor,
          onPressed: () {
            setState(() {
              _selectedPageIndex = 2;
            });
          },
        ),
      ),
    );
  }
}
