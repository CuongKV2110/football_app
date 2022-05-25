import 'package:flutter/cupertino.dart';
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

import '../../../data/resources/dimensions.dart';

class StudyScreen extends StatefulWidget {
  const StudyScreen({Key? key}) : super(key: key);

  @override
  _StudyScreenState createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  CategoryBloc categoryBloc = getIt();
  ObjectBloc objectBloc = getIt();
  Options options = Options(
    categoryId: 0,
    objectIds: [],
    categoryIds: [],
    objectId: 0,
  );

  late int type;

  @override
  void initState() {
    super.initState();
    type = TypeFirstChoose.none.index;
    _getData();
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
                const Text('Chọn vai trò/nhu cầu của bạn'),
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
                options.categoryId != 0 || options.objectId != 0
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
          return _ObjectBody(state.object);
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

              return GestureDetector(
                onTap: () {
                  type = TypeFirstChoose.iWant.index;

                  options.categoryId = _item.id;
                  options.objectIds = _item.objectIds!;

                  setState(() {});
                  print(_item.title);
                  print('ID category: ' + options.categoryId.toString());
                  print("Current Category List Object:" +
                      options.objectIds.toString());
                  print('Object ID: ' + options.objectId.toString());
                  print(type);
                  print(index);
                },
                child: CategoryWidget(_item.icon, _item.title,
                    color: getColorByType(_item.id)),
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

  Widget _ObjectBody(Objects object) {
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

              return GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () {
                  options.objectId = _objectItem.id;
                  options.categoryIds = _objectItem.categoryIds!;

                  type = TypeFirstChoose.iAm.index;

                  setState(() {});
                  print('type: ' + type.toString());
                  print('object id: ' +
                      options.objectId.toString() +
                      ' category id: ' +
                      options.categoryId.toString());
                },
                child: CategoryWidget(_objectItem.avatar, _objectItem.title,
                    color: getColorByType(_objectItem.id)),
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

  Color? getColorByType(int id) {
    if (type == TypeFirstChoose.iWant.index) {
      if (id == options.categoryId) {
        return AppColors.brown2;
      }
      if (options.objectIds.contains(id)) {
        return AppColors.brown2;
      }
    }
    if (type == TypeFirstChoose.iAm.index) {
      if (id == options.objectId) {
        return AppColors.yellow1;
      }
      if (options.categoryIds.contains(id)) {
        return AppColors.yellow1;
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
            type = TypeFirstChoose.none.index;
            options.categoryId = 0;
            options.objectId = 0;
            options.objectIds = [];

            print(options.categoryId.toString() +
                ' ' +
                options.objectId.toString() +
                ' ' +
                options.objectIds.toString());

            setState(() {});
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
                'Reset',
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
