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
        await Future.delayed(Duration(seconds: 2));
        _eventBloc.refreshData();
      },
      child: BlocProvider<EventBloc>(
        create: (context) => _eventBloc
          ..initial('nokia')
          ..getData(),
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

  Widget _buildList(List<Animal> data, BuildContext context) {
    return ListView.separated(
      controller: _controller,
      itemCount: data.length,
      padding: const EdgeInsets.only(bottom: 50),
      itemBuilder: (_, index) {
        final item = data[index];
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                /*Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeDetailScreen(data[index]);
                    },
                  ),
                );*/
              },
              child: _buildItem(item),
            ),
            if (index == data.length - 1) const CircularProgressIndicator()
          ],
        );
      },
      separatorBuilder: (_, __) => const SizedBox(height: 40),
    );
  }

  Widget _buildItem(Animal item) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        ClipRRect(
          child: CachedNetworkImage(
            imageUrl: item.image,
            width: AppDimensions.d90w,
            height: AppDimensions.d40h,
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        Positioned(
          top: 16,
          right: 16,
          child: Container(
            width: 100,
            height: 66,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    item.category.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.black1,
                      fontSize: 24,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      item.label,
                      style: TextStyle(
                        color: AppColors.black1,
                        fontSize: 24,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          child: Container(
            width: AppDimensions.d100w,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 10, 34, 10),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.name,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    'Speed: ' + item.speed,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Longevity: ' + item.longevity,
                        style: TextStyle(
                          color: AppColors.white,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        item.description,
                        style: TextStyle(
                          color: AppColors.white,
                          overflow: TextOverflow.ellipsis,
                        ),
                        maxLines: 2,
                      )
                    ],
                  )
                      /*child: BuildUser(),*/
                      ),
                ],
              ),
            ),
            height: AppDimensions.d38w,
            decoration: BoxDecoration(
              color: AppColors.white,
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    AppColors.black1,
                    AppColors.black3.withOpacity(0.8),
                    AppColors.black3.withOpacity(0.6),
                  ]),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildShimmer() {
    return Container(
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
