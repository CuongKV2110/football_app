import 'package:flutter/material.dart';
import 'package:music_app/presentation/shop_screen/widgets/build_shop_bar.dart';

import '../widgets/build_shop.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: const [
                BuildShopBar(),
                BuildShop(),
              ],
            )),
      ),
    );
  }
}
