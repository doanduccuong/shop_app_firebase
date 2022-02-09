import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:shop_app_firebase/cubit/app_cubit.dart';
import 'package:shop_app_firebase/cubit/app_cutbit_states.dart';
import 'package:shop_app_firebase/screens/feeds/widgets/feeds_product.dart';

class Feeds extends StatefulWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  State<Feeds> createState() => _FeedsState();
}

class _FeedsState extends State<Feeds> {
  @override
  Widget build(BuildContext context) {
   return BlocBuilder<AppCubit,CubitStates>(
     builder: (context,state){
       return Scaffold(
           body: MasonryGridView.count(
               itemCount: 8,
               crossAxisCount: 2,
               mainAxisSpacing: 8,
               crossAxisSpacing: 8,
               itemBuilder: (context, index)
               {
                 return FeedsProduct();
               }
           )
       );
     },
   );
  }
}
