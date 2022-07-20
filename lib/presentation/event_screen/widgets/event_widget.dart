import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/injection.dart';
import 'package:music_app/presentation/event_screen/bloc/event_bloc.dart';
import 'package:shimmer/shimmer.dart';
import '../../../data/models/animal.dart';
import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';

import '../bloc/event_state.dart';

class EventWidget extends StatefulWidget {
  const EventWidget({Key? key}) : super(key: key);

  @override
  _EventWidgetState createState() => _EventWidgetState();
}

class _EventWidgetState extends State<EventWidget> {
  final EventBloc _eventBloc = getIt();
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    _controller.addListener(handleScrolling);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(handleScrolling);
    _eventBloc.dispose();
    super.dispose();
  }

  void handleScrolling() async {
    if (_controller.position.maxScrollExtent == _controller.offset) {
      _eventBloc.loadMore();
    }
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 2));
        _eventBloc.refreshData();
      },
      child: BlocProvider<EventBloc>(
        create: (context) => _eventBloc..getData(),
        child: BlocBuilder<EventBloc, EventState>(
          builder: (context, state) {
            if (state is EventLoading) {
              return _buildShimmer();
            } else if (state is EventLoaded) {
              final data = state.data;
              return _buildList(data, context);
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _buildList(List<String> data, BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      controller: _controller,
      itemCount: data.length,
      padding: const EdgeInsets.only(bottom: 50),
      itemBuilder: (_, index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: _buildItem(data[index]),
            ),
            if (index == data.length - 1) const CircularProgressIndicator()
          ],
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 40),
    );
  }

  Widget _buildItem(String imgUrl) {
    return ClipRRect(
      child: CachedNetworkImage(
        imageUrl: imgUrl,
        width: AppDimensions.d90w,
        height: AppDimensions.d40h,
        fit: BoxFit.fill,
      ),
      borderRadius: BorderRadius.circular(24),
    );
  }

  Widget _buildShimmer() {
    return SizedBox(
      width: AppDimensions.d100w,
      height: AppDimensions.d100h,
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Card(
              elevation: 1.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: const SizedBox(height: 300),
            );
          },
        ),
      ),
    );
  }
}
