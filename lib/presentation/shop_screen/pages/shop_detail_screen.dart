import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/data/models/shop_detail.dart';

import '../../../data/resources/colors.dart';
import '../widgets/build_shop_detail.dart';
import '../widgets/build_shop_detail_appbar.dart';

class ShopDetailScreen extends StatefulWidget {
  const ShopDetailScreen({Key? key}) : super(key: key);

  @override
  _ShopDetailScreenState createState() => _ShopDetailScreenState();
}

class _ShopDetailScreenState extends State<ShopDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              AppColors.black1,
              AppColors.black2,
            ],
          ),
        ),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: AppColors.white,
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {},
                  child:
                      Icon(Ionicons.options_outline, color: AppColors.orange1),
                ),
                SizedBox(
                  width: 29,
                ),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.fromLTRB(19, 0, 29, 0),
              child: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: [
                  BuildShopDetailAppBar(),
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  BuildShopDetail(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
