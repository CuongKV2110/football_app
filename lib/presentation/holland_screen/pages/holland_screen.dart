import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/injection.dart';
import 'package:music_app/presentation/holland_screen/bloc/holland_bloc.dart';
import 'package:music_app/presentation/holland_screen/bloc/holland_state.dart';
import 'package:music_app/presentation/holland_screen/models/holland.dart';
import 'package:music_app/presentation/holland_screen/models/holland_option.dart';
import 'package:music_app/presentation/holland_screen/widget/button_widget.dart';
import 'package:music_app/presentation/holland_screen/widget/holland_widget.dart';

import '../../../data/resources/dimensions.dart';

class HollandScreen extends StatefulWidget {
  const HollandScreen({Key? key}) : super(key: key);

  @override
  _HollandScreenState createState() => _HollandScreenState();
}

class _HollandScreenState extends State<HollandScreen> {
  HollandBloc hollandBloc = getIt();

  @override
  void initState() {
    hollandBloc.getDataHolland();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.green4,
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Icon(
              Icons.arrow_back_ios,
              color: AppColors.white,
              size: 20,
            ),
          ),
          leadingWidth: 30,
          backgroundColor: AppColors.green4,
          elevation: 0,
          title: const Text(
            'Holland',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Icon(
              Icons.info_outline,
              color: AppColors.white,
              size: 24,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(36),
              topLeft: Radius.circular(36),
            ),
            color: AppColors.white,
          ),
          child: BlocProvider<HollandBloc>(
            create: (context) => hollandBloc,
            child: BlocBuilder<HollandBloc, HollandState>(
              builder: (context, state) {
                if (state is HollandLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (state is HollandSuccess) {
                  return _buildBody(state.holland);
                }
                return const Center();
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(Holland holland) {
    List<HollandOption> listIam = [];
    List<HollandOption> listIcan = [];
    List<HollandOption> listIwant = [];
    for (int i = 0; i < holland.result.length; i++) {
      if (holland.result[i].type == 1) {
        listIam.add(HollandOption(hollandResult: holland.result[i], value: 0));
      } else if (holland.result[i].type == 2) {
        listIcan.add(HollandOption(hollandResult: holland.result[i], value: 0));
      } else {
        listIwant
            .add(HollandOption(hollandResult: holland.result[i], value: 0));
      }
    }

    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              const SliverToBoxAdapter(
                child: Text(
                  'Chọn mức độ phù hợp với tính cách của bạn',
                  textAlign: TextAlign.center,
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              ButtonWidget("Tôi là người"),
              _buildHollandList("Toi là người", listIam),
              ButtonWidget("Tôi có thể"),
              _buildHollandList("Tôi có thể", listIcan),
              ButtonWidget("Tôi muốn"),
              _buildHollandList("Toi muốn", listIwant),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            height: 50,
            width: AppDimensions.d100w,
            color: AppColors.gray2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 6),
              child: Row(
                children: [
                  const Text(
                    'Đóng',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(AppDimensions.d48w, 50),
                      primary: AppColors.green4,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(90),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        'GỬI KẾT QUẢ',
                        style: TextStyle(fontSize: 18, color: AppColors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildHollandList(String title, List<HollandOption> listHolland) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Column(
            children: [
              HollandWidget(listHolland[index], index),
              const Divider(
                color: AppColors.gray,
              ),
              const SizedBox(
                height: 10,
              )
            ],
          );
        },
        childCount: listHolland.length,
      ),
    );
  }
}
