import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/data/resources/dimensions.dart';
import 'package:music_app/presentation/home_screen/bloc/home_bloc.dart';
import 'package:music_app/presentation/home_screen/widgets/build_options.dart';
import 'package:music_app/presentation/home_screen/widgets/build_text_content.dart';
import 'package:music_app/presentation/home_screen/widgets/catch_up_widget.dart';
import 'package:music_app/presentation/home_screen/widgets/category_widget.dart';
import 'package:music_app/presentation/home_screen/widgets/top_pick_widget.dart';
import 'package:music_app/presentation/live_screen/pages/live_screen.dart';

import '../bloc/home_state.dart';

class BuildHomeBody extends StatefulWidget {
  const BuildHomeBody({Key? key}) : super(key: key);

  @override
  _BuildHomeBodyState createState() => _BuildHomeBodyState();
}

class _BuildHomeBodyState extends State<BuildHomeBody> {
  HomeBloc bloc = HomeBloc();

  @override
  void initState() {
    bloc.getData();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => bloc,
      child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        if (state is HomeLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is HomeLoaded) {
          return Column(
            children: [
              BuildOptions(bloc.imageList1, bloc.imageList2, bloc.imageList3),
              SizedBox(
                height: 20,
              ),
              BuildTextContent('Catch'),
              const SizedBox(
                height: 16,
              ),
              CatchUpWidget(bloc.imageList1),
              const SizedBox(
                height: 36,
              ),
              BuildTextContent('Top'),
              const SizedBox(
                height: 16,
              ),
              TopPickWidget(bloc.imageList2),
              const SizedBox(
                height: 36,
              ),
              BuildTextContent('Category'),
              const SizedBox(
                height: 16,
              ),
              CategoryWidget(bloc.imageList3),
            ],
          );
        } else if (state is HomeError) {
          return Text('Loi');
        }
        return Center();
      }),
    );
  }
}
