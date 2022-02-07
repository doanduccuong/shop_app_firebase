import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app_firebase/configs/theme_data.dart';
import 'package:shop_app_firebase/provider/dark_theme_provider.dart';
import 'package:shop_app_firebase/screens/bottom_bar.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  DarkThemeProvider themeChangeProvider=DarkThemeProvider();

  @override
  Widget build(BuildContext context) {
    
    return Consumer(builder: (context,themeData,child){
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context){
            return themeChangeProvider;
          })
        ],
      );
      return  MaterialApp(
        title: 'Flutter Demo',
        theme: Styles.themeData(themeChangeProvider.darkTheme, context),
        home: const BottomBarScreen(),
      );
    });
  }
}



