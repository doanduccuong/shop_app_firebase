import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_firebase/component/text/text_bold.dart';
import 'package:shop_app_firebase/component/text/text_normal.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:shop_app_firebase/configs/colors.dart';
import 'package:shop_app_firebase/cubit/app_cubit.dart';
import 'package:shop_app_firebase/cubit/app_cutbit_states.dart';
import 'package:shop_app_firebase/model/theme_preference.dart';
import 'package:shop_app_firebase/screens/user_info/widget/user_list_title.dart';

class UserInfo extends StatefulWidget {
  const UserInfo({Key? key}) : super(key: key);

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  late ScrollController _scrollController;
  var top = 0.0;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, CubitStates>(
      builder: (BuildContext context, state) {
        if (state is BottomBarState) {
          var isDarkTheme = state.isDarkTheme;
          return Scaffold(
            body: Stack(
              children: [
                CustomScrollView(
                  scrollDirection: Axis.vertical,
                  controller: _scrollController,
                  slivers: [
                    SliverAppBar(
                      // automaticallyImplyLeading: false,
                      elevation: 4,
                      expandedHeight: 200,
                      pinned: true,
                      flexibleSpace: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          top = constraints.biggest.height;
                          return Container(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    AppColors.staterColor,
                                    AppColors.endColor,
                                  ],
                                  begin: FractionalOffset(0, 0),
                                  end: FractionalOffset(1, 0),
                                  stops: [0.0, 1.0],
                                  tileMode: TileMode.clamp),
                            ),
                            child: FlexibleSpaceBar(
                              collapseMode: CollapseMode.parallax,
                              centerTitle: true,
                              title: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  AnimatedOpacity(
                                    opacity: top <= 110.0 ? 1.0 : 0,
                                    duration: const Duration(microseconds: 300),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 12,
                                        ),
                                        Container(
                                          height: kToolbarHeight / 1.8,
                                          width: kToolbarHeight / 1.8,
                                          decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.white,
                                                  blurRadius: 1.0),
                                            ],
                                            shape: BoxShape.circle,
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                  'https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max'),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        const TextNormal(
                                          title: 'Guest',
                                          size: 20.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              background: const Image(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                    'https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max'),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextBold(
                            title: 'User Bag',
                            size: 22,
                            height: 1.5,
                          ),
                          const Divider(
                            thickness: 1.0,
                          ),
                          InkWell(
                            onTap: () {},
                            child:   ListTile(
                              leading: const Icon(Icons.favorite_border),
                              title: TextNormal(
                                colors: DarkThemePreference.getThemeStatus()==false?AppColors.textColor:Colors.white,
                                title: 'Wishlist',
                              ),
                              trailing: const Icon(Icons.arrow_forward),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child:  ListTile(
                              leading: const Icon(Icons.shopping_cart_outlined),
                              title: TextNormal(
                                colors: DarkThemePreference.getThemeStatus()==false?AppColors.textColor:Colors.white,
                                title: 'Cart',
                              ),
                              trailing: const Icon(Icons.arrow_forward),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child:  ListTile(
                              leading: const Icon(Icons.shopping_bag_outlined),
                              title: TextNormal(
                                colors: DarkThemePreference.getThemeStatus()==false?AppColors.textColor:Colors.white,
                                title: 'My Orders',
                              ),
                              trailing: const Icon(Icons.arrow_forward),
                            ),
                          ),
                          const TextBold(
                            title: 'User Information',
                            size: 22,
                            height: 1.5,
                          ),
                          const Divider(
                            thickness: 1.0,
                          ),
                          userListTitle(
                              'Email', 'Email sub', Icons.email, context),
                          userListTitle(
                              'Phone Number', '4555', Icons.phone, context),
                          userListTitle(
                            'Shipping address',
                            '',
                            Icons.local_shipping,
                            context,
                          ),
                          userListTitle('Joined data', 'date',
                              Icons.watch_later, context),
                          const TextBold(
                            title: 'User Setting',
                            size: 22,
                            height: 1.5,
                          ),
                          const Divider(
                            thickness: 1.0,
                          ),
                          ListTileSwitch(
                            visualDensity: VisualDensity.comfortable,
                            value: isDarkTheme,
                            leading: const Icon(Icons.nightlight_round),
                            onChanged: (value) {
                              BlocProvider.of<AppCubit>(context)
                                  .changeTheme(value);
                              //print('cuong');
                              DarkThemePreference.setThemeStatus(value);
                              //print(DarkThemePreference.getThemeStatus());
                            },

                            switchType: SwitchType.cupertino,
                            switchActiveColor: Colors.indigo,
                            title:  TextNormal(title: 'Dark Theme',colors: DarkThemePreference.getThemeStatus()==false?AppColors.textColor:Colors.white,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                _buildFab()
              ],
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }

  Widget _buildFab() {
    const double defaultTopMargin = 200.0 - 4.0;
    const double scaleStart = 160.0;
    const double scaleEnd = scaleStart / 2;
    double top = defaultTopMargin;
    double scale = 1;
    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;
      if (offset < defaultTopMargin - scaleStart) {
        scale = 1.0;
      } else if (offset < defaultTopMargin - scaleEnd) {
        scale = (defaultTopMargin - scaleEnd - offset) / scaleEnd;
      } else {
        scale = 0.0;
      }
    }
    return Positioned(
      top: top,
      right: 16.0,
      child: Transform(
        alignment: Alignment.center,
        transform: Matrix4.identity()..scale(scale),
        child: FloatingActionButton(
          onPressed: () {},
          heroTag: "btn1",
          child: const Icon(Icons.camera_alt_outlined),
        ),
      ),
    );
  }
}
