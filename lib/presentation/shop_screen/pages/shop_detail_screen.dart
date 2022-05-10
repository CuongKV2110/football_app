import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import '../../../data/models/shop_detail.dart';
import '../../../data/resources/colors.dart';
import '../../watch_screen/pages/watch_detail_screen.dart';

class ShopDetailScreen extends StatefulWidget {
  const ShopDetailScreen({Key? key}) : super(key: key);

  @override
  _ShopDetailScreenState createState() => _ShopDetailScreenState();
}

class _ShopDetailScreenState extends State<ShopDetailScreen> {
  TextEditingController _searchController = TextEditingController();
  List<ShopDetail> _foundList = [];
  final List<ShopDetail> _list = [
    ShopDetail(
      img:
          'https://file.hstatic.net/1000061481/file/2.3_c3d5765c94e440c5b408a6849fc70466.jpeg',
      name: 'Adidas Predator X3.21',
      isTym: false,
      cost: 30,
    ),
    ShopDetail(
      img: 'https://cf.shopee.vn/file/3f217175d2ef0417ec83325907137a47',
      name: 'Nike Phantom 2.1',
      isTym: false,
      cost: 25,
    ),
    ShopDetail(
      img: 'https://cf.shopee.vn/file/fbfdad77c8d108e2f6aff2036c8f8980',
      name: 'Nike Mercurial Pro',
      isTym: false,
      cost: 16,
    ),
    ShopDetail(
      img: 'https://cf.shopee.vn/file/7203786a758abb3f916e729e73dd2a88',
      name: 'Thuong Dinh Sport',
      isTym: false,
      cost: 53,
    ),
    ShopDetail(
      img:
          'https://vn-live-01.slatic.net/p/b3a8ea7dafb92528edd3fdee3bbeef01.jpg',
      name: 'Puma Special 2.2',
      isTym: false,
      cost: 28,
    ),
    ShopDetail(
      img:
          'https://file.hstatic.net/1000061481/file/giay_co_nhan_tao_tot__4__c4441963d57949f686c024e00dfa5e96.jpg',
      name: 'Adidas Predator X20.3',
      isTym: false,
      cost: 23,
    ),
    ShopDetail(
      img: 'https://cf.shopee.vn/file/fc749d2ba69234945471b263a36d76d9',
      name: 'Puma Neymar Pro',
      isTym: false,
      cost: 43,
    ),
    ShopDetail(
      img:
          'https://www.sport9.vn/images/uploaded/Vapor%2013%20FTL2/87c301bb223ed860812f.jpg',
      name: 'Nike Focus X4.5',
      isTym: false,
      cost: 51,
    ),
    ShopDetail(
      img:
          'https://giaydabonghana.com/wp-content/uploads/2019/03/giay-da-bong-san-co-nhan-tao-mitre-vang-tf-hana-1.jpg',
      name: 'Mizuno X8 AG',
      isTym: false,
      cost: 49,
    ),
    ShopDetail(
      img:
          'https://i.pinimg.com/originals/36/bf/43/36bf43eabcbd15f6c5215e3a056d21e5.jpg',
      name: 'Adidas Special Summer',
      isTym: false,
      cost: 62,
    ),
  ];

  //Khai bao them list ow day

  void _runSearch(String text) {
    List<ShopDetail> _results = [];
    if (text.isEmpty) {
      _results = _list;
    } else {
      _results = _foundList
          .where((ShopDetail) =>
              ShopDetail.name.toLowerCase().contains(text.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundList = _results;
    });
  }

  @override
  void initState() {
    _foundList = _list;
    super.initState();
  }

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
                child: const Icon(
                  Icons.arrow_back,
                  color: AppColors.white,
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Ionicons.options_outline,
                      color: AppColors.orange1),
                ),
                const SizedBox(
                  width: 29,
                ),
              ],
            ),
            body: Container(
              height: double.infinity,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(19, 0, 29, 0),
                  child: Column(
                    children: [
                      TextField(
                        controller: _searchController,
                        onChanged: (value) {
                          _runSearch(_searchController.text);
                        },
                        decoration: const InputDecoration(
                            labelText: 'Search',
                            suffixIcon: Icon(Icons.search)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: _foundList.isNotEmpty
                            ? GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithMaxCrossAxisExtent(
                                        maxCrossAxisExtent: 200,
                                        childAspectRatio: 0.6,
                                        crossAxisSpacing: 20,
                                        mainAxisSpacing: 20),
                                itemCount: _foundList.length,
                                itemBuilder: (_, index) {
                                  return Container(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return WatchDetailScreen(
                                                  _foundList[index].img);
                                            },
                                          ),
                                        );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(7),
                                          gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            colors: [
                                              AppColors.orange1,
                                              AppColors.orange2,
                                            ],
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(1),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(7),
                                              color: AppColors.black4,
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      4, 2, 4, 2),
                                              child: Container(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              _foundList[index]
                                                                  .img,
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Text(
                                                          '\$' +
                                                              _foundList[index]
                                                                  .cost
                                                                  .toString(),
                                                          style:
                                                              const TextStyle(
                                                            color: AppColors
                                                                .orange1,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14,
                                                          ),
                                                        ),
                                                        const Spacer(),
                                                        GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              _foundList[index]
                                                                      .isTym =
                                                                  !_foundList[
                                                                          index]
                                                                      .isTym;
                                                            });
                                                          },
                                                          child: Icon(
                                                            _foundList[index]
                                                                    .isTym
                                                                ? Icons.favorite
                                                                : Icons
                                                                    .favorite_outline,
                                                            color: _foundList[
                                                                        index]
                                                                    .isTym
                                                                ? AppColors.red2
                                                                : AppColors
                                                                    .white,
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                    const SizedBox(
                                                      height: 10,
                                                    ),
                                                    Text(
                                                      _foundList[index].name,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: const TextStyle(
                                                        color: AppColors.white,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 6,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                  );
                                })
                            : const Text(
                                'No results found',
                                style: TextStyle(fontSize: 24),
                              ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
