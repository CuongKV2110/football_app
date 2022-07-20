import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/presentation/study_screen/bloc/study_bloc/study_state.dart';
import 'package:music_app/presentation/study_screen/models/study.dart';
import 'package:music_app/presentation/study_screen/widgets/item_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../data/resources/colors.dart';
import '../../../data/resources/dimensions.dart';
import '../../../injection.dart';
import '../bloc/study_bloc/study_bloc.dart';
import '../models/choose.dart';

class StudyScreen extends StatefulWidget {
  const StudyScreen({Key? key}) : super(key: key);

  @override
  _StudyScreenState createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  StudyBloc studybloc = getIt();
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Choose choose = Choose(0, 0, 0, []);

  @override
  Future<Choose> check() async {
    SharedPreferences prefs = await _prefs;
    String choosePref = prefs.getString('choose')!;
    Map<String, dynamic> chooseMap =
        jsonDecode(choosePref) as Map<String, dynamic>;

    Choose chooseUpdate = Choose.fromJson(chooseMap);
    choose.firstId = chooseUpdate.firstId;
    choose.secondId = chooseUpdate.secondId;
    choose.listChild = chooseUpdate.listChild;
    choose.type = chooseUpdate.type;

    return choose;
  }

  void _saveData() async {
    SharedPreferences prefs = await _prefs;
    Map<String, dynamic> chooseMap = {
      'firstId': choose.firstId,
      'secondId': choose.secondId,
      'type': choose.type,
      'listChild': choose.listChild,
    };

    await prefs.setString('choose', jsonEncode(chooseMap));
  }

  @override
  void initState() {
    studybloc.getDataStudy();
    check();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Hướng nghiệp BND'),
          elevation: 0,
        ),
        body: BlocProvider<StudyBloc>(
          create: (context) => studybloc,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text('Chọn vai trò/nhu cầu của bạn'),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: BlocBuilder<StudyBloc, StudyState>(
                    builder: (context, state) {
                      if (state is StudyLoading) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      } else if (state is StudyLoaded) {
                        return _buildBody(state.study);
                      }
                      return const Center(
                        child: Text('Loi'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(Study study) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCategory(study),
            const SizedBox(
              width: 24,
            ),
            _buildObject(study),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        choose.firstId != 0
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: _buttonWidget(),
              )
            : const SizedBox(),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget _buildCategory(Study study) {
    return Expanded(
      child: Column(
        children: [
          const Text(
            'Tôi muốn:',
            style: TextStyle(
              color: AppColors.text,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            primary: false,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final _categoryItem = study.category.result[index];
              bool check = choose.listChild.contains(_categoryItem.id) ||
                  choose.firstId == _categoryItem.id;
              return GestureDetector(
                onTap: () {
                  studybloc.setCategory(study, choose, _categoryItem);
                },
                child: ItemWidget(
                  _categoryItem.icon,
                  _categoryItem.title,
                  _categoryItem.description,
                  check,
                  color: getColorByType1(_categoryItem.id),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: study.category.result.length,
          ),
        ],
      ),
    );
  }

  Widget _buildObject(Study study) {
    return Expanded(
      child: Column(
        children: [
          const Text(
            'Tôi là:',
            style: TextStyle(
              color: AppColors.text,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            shrinkWrap: true,
            primary: false,
            itemCount: study.objects.result.data!.length,
            itemBuilder: (context, index) {
              final _objectItem = study.objects.result.data![index];
              bool check = choose.listChild.contains(_objectItem.id) ||
                  choose.firstId == _objectItem.id;
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  studybloc.setObject(study, choose, _objectItem);
                },
                child: ItemWidget(
                  _objectItem.avatar,
                  _objectItem.title,
                  _objectItem.description,
                  check,
                  color: getColorByType2(_objectItem.id),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
          )
        ],
      ),
    );
  }

  Widget _buttonWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          SizedBox(
            width: AppDimensions.d90w,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                _saveData();
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(90),
                ),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      AppColors.green3,
                      AppColors.green2,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(90),
                ),
                child: Container(
                  width: AppDimensions.d90w,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    'Save',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Color? getColorByType1(int id) {
    if (choose.type == TypeFirstChoose.iWant.index) {
      if (id == choose.firstId) {
        return AppColors.brown2;
      }
      if (choose.listChild.contains(id)) {
        if (id == choose.secondId) {
          return AppColors.brown2;
        } else {
          return AppColors.yellow1;
        }
      }
    }
    if (choose.type == TypeFirstChoose.iAm.index) {
      if (choose.listChild.contains(choose.secondId) && id == choose.firstId) {
        return AppColors.yellow1;
      } else if (choose.listChild.contains(id) && choose.secondId == 0) {
        return AppColors.yellow1;
      } else {
        return null;
      }
    }
    return null;
  }

  Color? getColorByType2(int id) {
    if (choose.type == TypeFirstChoose.iAm.index) {
      if (id == choose.firstId) {
        if (choose.secondId == 0) {
          return AppColors.yellow1;
        } else {
          return AppColors.brown2;
        }
      }
      if (choose.listChild.contains(id)) {
        if (id == choose.secondId) {
          return AppColors.yellow1;
        } else {
          return AppColors.brown2;
        }
      }
    }

    if (choose.type == TypeFirstChoose.iWant.index) {
      if (choose.listChild.contains(id)) {
        return AppColors.brown2;
      } else if (id == choose.firstId) {
        return AppColors.brown2;
      } else {
        return null;
      }
    }
    return null;
  }
}

enum TypeFirstChoose {
  none,
  iWant,
  iAm,
}
