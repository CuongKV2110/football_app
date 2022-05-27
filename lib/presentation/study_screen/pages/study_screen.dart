import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/data/resources/colors.dart';
import 'package:music_app/injection.dart';
import 'package:music_app/presentation/study_screen/bloc/category_bloc/category_bloc.dart';
import 'package:music_app/presentation/study_screen/bloc/category_bloc/category_state.dart';
import 'package:music_app/presentation/study_screen/bloc/object_bloc/object_bloc.dart';
import 'package:music_app/presentation/study_screen/bloc/object_bloc/object_state.dart';
import 'package:music_app/presentation/study_screen/models/category.dart';
import 'package:music_app/presentation/study_screen/models/objects.dart';
import 'package:music_app/presentation/study_screen/models/options.dart';
import 'package:music_app/presentation/study_screen/widgets/category_widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../data/resources/dimensions.dart';

class StudyScreen extends StatefulWidget {
  const StudyScreen({Key? key}) : super(key: key);

  @override
  _StudyScreenState createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  CategoryBloc categoryBloc = getIt();
  ObjectBloc objectBloc = getIt();
  Options options = Options(firstId: 0, listChild: [], secondId: 0);
  late int type;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  int _counter = 0;

  void loadCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  @override
  void initState() {
    super.initState();
    type = TypeFirstChoose.none.index;
    _getData();
    loadCounter();
  }

  void _incrementCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = ((prefs.getInt('counter') ?? 0) + 1);
      prefs.setInt('counter', _counter);
    });
  }

  void _getData() async {
    final _object = await objectBloc.getDataObject();
    final _category = await categoryBloc.getDataCategory();

    for (int i = 0; i < _object.result.data!.length; i++) {
      List<int> _cateID = [];
      for (int j = 0; j < _category.result.length; j++) {
        bool check =
            _category.result[j].objectIds!.contains(_object.result.data![i].id);
        print(_category.result[j].objectIds);
        print(_object.result.data![i].id);

        if (check == true) {
          _cateID.add(_category.result[j].id);
          print(' co');
        } else {
          print('khong co');
        }
      }
      _object.result.data![i].categoryIds = _cateID;

      print(_cateID);
      print(_object.result.data![i].categoryIds);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-for
        appBar: AppBar(
          title: const Text('Hướng nghiệp'),
          elevation: 0,
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => categoryBloc,
            ),
            BlocProvider(
              create: (context) => objectBloc,
            ),
          ],
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text('Chọn vai trò/nhu cầu của bạn + $_counter'),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildCategory(),
                      const SizedBox(
                        width: 24,
                      ),
                      _buildObject(),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                options.firstId != 0
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        child: _buttonWidget(),
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCategory() {
    return BlocBuilder<CategoryBloc, CategoryState>(
      builder: (context, state) {
        if (state is CategoryLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is CategoryLoaded) {
          return _categoryBody(state.category);
        }
        return const Center();
      },
    );
  }

  Widget _buildObject() {
    return BlocBuilder<ObjectBloc, ObjectState>(
      builder: (context, state) {
        if (state is ObjectLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ObjectLoaded) {
          return _objectBody(state.object);
        }
        return const Center();
      },
    );
  }

  Widget _categoryBody(Category category) {
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
              final _item = category.result[index];
              bool check = options.listChild!.contains(_item.id) ||
                  options.firstId == _item.id;
              return GestureDetector(
                onTap: () {
                  type = TypeFirstChoose.iWant.index;

                  if (options.firstId == 0) {
                    options.firstId = _item.id;
                    options.listChild = _item.objectIds;
                  } else {
                    if (options.listChild!.contains(_item.id)) {
                      options.secondId = _item.id;
                    } else {
                      options.firstId = _item.id;
                      options.listChild = _item.objectIds;
                      options.secondId = 0;
                    }
                  }
                  setState(() {});
                  print(_item.title);
                  print('First ID: ' + options.firstId.toString());
                  print("List Child:" + options.listChild.toString());
                  print('Second ID: ' + options.secondId.toString());
                },
                child: CategoryWidget(
                  _item.icon,
                  _item.title,
                  _item.description,
                  check,
                  color: getColorByType1(_item.id),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: category.result.length,
          )
        ],
      ),
    );
  }

  Widget _objectBody(Objects object) {
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
            itemCount: object.result.data!.length,
            itemBuilder: (context, index) {
              final _objectItem = object.result.data![index];
              bool check = options.listChild!.contains(_objectItem.id) ||
                  options.firstId == _objectItem.id;
              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  type = TypeFirstChoose.iAm.index;
                  if (options.firstId == 0) {
                    options.firstId = _objectItem.id;
                    options.listChild = _objectItem.categoryIds;
                  } else {
                    if (options.listChild!.contains(_objectItem.id)) {
                      options.secondId = _objectItem.id;
                    } else {
                      options.firstId = _objectItem.id;
                      options.listChild = _objectItem.categoryIds;
                      options.secondId = 0;
                    }
                  }

                  setState(() {});
                  print('First ID: ' + options.firstId.toString());
                  print("List Child:" + options.listChild.toString());
                  print('Second ID: ' + options.secondId.toString());
                },
                child: CategoryWidget(
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

  Color? getColorByType1(int id) {
    if (type == TypeFirstChoose.iWant.index) {
      if (id == options.firstId) {
        return AppColors.brown2;
      }
      if (options.listChild!.contains(id)) {
        if (id == options.secondId) {
          return AppColors.brown2;
        } else {
          return AppColors.yellow1;
        }
      }
    }
    if (type == TypeFirstChoose.iAm.index) {
      if (options.listChild!.contains(options.secondId) &&
          id == options.firstId) {
        return AppColors.yellow1;
      } else if (options.listChild!.contains(id) && options.secondId == 0) {
        return AppColors.yellow1;
      } else {
        return null;
      }
    }
    return null;
  }

  Color? getColorByType2(int id) {
    if (type == TypeFirstChoose.iAm.index) {
      if (id == options.firstId) {
        if (options.secondId == 0) {
          return AppColors.yellow1;
        } else {
          return AppColors.brown2;
        }
      }
      if (options.listChild!.contains(id)) {
        if (id == options.secondId) {
          return AppColors.yellow1;
        } else {
          return AppColors.brown2;
        }
      }
    }

    if (type == TypeFirstChoose.iWant.index) {
      if (options.listChild!.contains(id)) {
        return AppColors.brown2;
      } else if (id == options.firstId) {
        return AppColors.brown2;
      } else {
        return null;
      }
    }

    return null;
  }

  Widget _buttonWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
        width: AppDimensions.d90w,
        height: 50,
        child: ElevatedButton(
          onPressed: () {
            _incrementCounter();
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
      ),
    );
  }
}

enum TypeFirstChoose {
  none,
  iWant,
  iAm,
}
