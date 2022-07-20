import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/presentation/home_screen/bloc/home_bloc.dart';
import 'package:music_app/presentation/home_screen/widgets/build_options.dart';
import 'package:music_app/presentation/home_screen/widgets/build_text_content.dart';
import 'package:music_app/presentation/home_screen/widgets/catch_up_widget.dart';
import 'package:music_app/presentation/home_screen/widgets/category_widget.dart';
import 'package:music_app/presentation/home_screen/widgets/top_pick_widget.dart';
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
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => bloc,
      child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
        if (state is HomeLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is HomeLoaded) {
          return Column(
            children: [
              BuildOptions(bloc.imageList1, bloc.imageList2, bloc.imageList3),
              const SizedBox(
                height: 20,
              ),
              BuildTextContent('Highlights'),
              const SizedBox(
                height: 16,
              ),
              CatchUpWidget(bloc.imageList1),
              const SizedBox(
                height: 36,
              ),
              BuildTextContent('Super Match'),
              const SizedBox(
                height: 16,
              ),
              TopPickWidget(bloc.imageList2),
              const SizedBox(
                height: 36,
              ),
              BuildTextContent('Stadium'),
              const SizedBox(
                height: 16,
              ),
              CategoryWidget(bloc.imageList3),
            ],
          );
        } else if (state is HomeError) {
          return const Text('Loi');
        }
        return const Center();
      }),
    );
  }
}
