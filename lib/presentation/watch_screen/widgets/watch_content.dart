import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:music_app/presentation/watch_screen/bloc/watch_bloc.dart';
import 'package:music_app/presentation/watch_screen/bloc/watch_state.dart';

import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';
import '../../widgets/build_user.dart';
import '../pages/watch_detail_screen.dart';
import 'build_watch_time.dart';

class WatchContent extends StatefulWidget {
  String content;

  WatchContent(this.content);

  @override
  _WatchContentState createState() => _WatchContentState();
}

class _WatchContentState extends State<WatchContent> {
  WatchBloc bloc = WatchBloc();

  @override
  void initState() {
    bloc.getData();
    super.initState();
    print('A');
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<WatchBloc>(
      create: (context) => bloc,
      child: BlocBuilder<WatchBloc, WatchState>(builder: (context, state) {
        if (state is WatchLoading) {
          Future.delayed(
            const Duration(seconds: 2),
          );
          print('Loading');
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is WatchLoaded) {
          return Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      widget.content == 'Live'
                          ? 'Live Events for you'
                          : (widget.content == 'Current'
                              ? 'Your Current Event'
                              : 'Followers Event'),
                      style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: AppDimensions.d100w,
                height: AppDimensions.d30h,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: bloc.list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.fromLTRB(index == 0 ? 18 : 0, 0, 20, 0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return WatchDetailScreen(bloc.list[index]);
                              },
                            ),
                          );
                        },
                        child: Stack(
                          children: [
                            ClipRRect(
                              child: CachedNetworkImage(
                                imageUrl: bloc.list[index],
                                width: AppDimensions.d80w,
                                height: AppDimensions.d30h,
                                fit: BoxFit.fill,
                              ),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            Positioned(
                                top: 10,
                                left: 10,
                                child: widget.content == 'Live'
                                    ? const Icon(
                                        Ionicons.radio,
                                        color: AppColors.white,
                                      )
                                    : const SizedBox()),
                            const Positioned(
                              top: 10,
                              right: 10,
                              child: Icon(
                                Ionicons.ellipsis_vertical,
                                color: AppColors.white,
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              child: Container(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 6),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'Caroline Kennedy',
                                          style: TextStyle(
                                            color: AppColors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            const Icon(
                                              Icons.location_on_outlined,
                                              color: AppColors.white,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            const Text(
                                              'Wembley Stadium',
                                              style: TextStyle(
                                                color: AppColors.white,
                                                fontSize: 13,
                                              ),
                                            ),
                                            const Spacer(),
                                            Row(children: [
                                              Text(
                                                widget.content == 'Live'
                                                    ? 'Music'
                                                    : 'Athletic',
                                                style: const TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              Container(
                                                width: 1,
                                                height: 10,
                                                color: AppColors.white,
                                              ),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              Text(
                                                widget.content == 'Live'
                                                    ? 'Dance'
                                                    : 'All Levels',
                                                style: const TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              widget.content == 'Live'
                                                  ? Container(
                                                      width: 1,
                                                      height: 10,
                                                      color: AppColors.white,
                                                    )
                                                  : const SizedBox(),
                                              const SizedBox(
                                                width: 2,
                                              ),
                                              Text(
                                                widget.content == 'Live'
                                                    ? 'Fun'
                                                    : '',
                                                style: const TextStyle(
                                                  color: AppColors.white,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ]),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Row(
                                          children: [
                                            const BuildUser(),
                                            const Spacer(),
                                            widget.content == 'Live'
                                                ? const SizedBox()
                                                : const BuildWatchTime()
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
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
                                    bottomRight: Radius.circular(16),
                                    bottomLeft: Radius.circular(16),
                                  ),
                                ),
                                height: AppDimensions.d15h,
                                width: AppDimensions.d80w,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          );
        } else if (state is WatchError) {
          return const Center(
            child: const Text('Loi'),
          );
        }
        return const Center();
      }),
    );
  }
}
