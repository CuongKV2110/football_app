import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/domain/usecases/study_usecases.dart';
import 'package:music_app/presentation/study_screen/models/category_request.dart';
import 'package:music_app/presentation/study_screen/models/category_result.dart';
import 'package:music_app/presentation/study_screen/models/choose.dart';
import 'package:music_app/presentation/study_screen/models/object_request.dart';
import 'package:music_app/presentation/study_screen/models/object_user.dart';
import 'package:music_app/presentation/study_screen/models/study.dart';
import '../../models/category.dart';
import '../../models/object_result.dart';
import '../../models/objects.dart';
import '../../pages/study_screen.dart';
import 'study_state.dart';

class StudyBloc extends Cubit<StudyState> {
  StudyBloc(this.studyUseCase) : super(StudyInitial());
  StudyUseCase studyUseCase;

  CategoryRequest categoryRequest = CategoryRequest(
    parentId: 0,
    block: 4,
    code: 'guide_main_category',
    getChilds: false,
    systemObjectId: 0,
  );

  ObjectRequest objectRequest = ObjectRequest(
    sortExpression: '',
    pageSize: 10,
    pageIndex: 1,
    skip: 0,
    notSkip: 0,
    keyWord: '',
    listId: [],
    blockCategoryId: 0,
  );

  Future<Study> getDataStudy() async {
    emit(StudyLoading());
    Category _category =
        Category(serverTime: DateTime.now(), result: <CategoryResult>[]);
    Objects _object =
        Objects(serverTime: DateTime.now(), result: ObjectResult());
    Study study1 = Study(_category, _object);
    var resObject = await studyUseCase.getDataObject(objectRequest);

    Category resCategory = await studyUseCase.getDataCategory(categoryRequest);

    if (resObject != 0) {
      Study study = Study(resCategory, resObject);

      var objectData = study.objects.result.data;
      var categoryData = study.category.result;

      for (int i = 0; i < objectData!.length; i++) {
        List<int> _cateID = [];
        for (int j = 0; j < categoryData.length; j++) {
          bool check = categoryData[j].objectIds!.contains(objectData[i].id);
          if (check == true) {
            _cateID.add(categoryData[j].id);
          } else {}
        }
        study.objects.result.data![i].categoryIds = _cateID;
      }
      emit(StudyLoaded(study));
      return study;
    } else {
      emit(StudyError());
      return study1;
    }
  }

  Future<void> setCategory(
      Study study, Choose choose, CategoryResult category) async {
    choose.type = TypeFirstChoose.iWant.index;
    if (choose.firstId == 0) {
      choose.firstId = category.id;
      choose.listChild = category.objectIds!;
    } else {
      if (choose.listChild.contains(category.id)) {
        choose.secondId = category.id;
      } else {
        choose.firstId = category.id;
        choose.listChild = category.objectIds!;
        choose.secondId = 0;
      }
    }
    emit(StudyLoaded(study));
  }

  void setObject(Study study, Choose choose, ObjectUser object) {
    choose.type = TypeFirstChoose.iAm.index;
    if (choose.firstId == 0) {
      choose.firstId = object.id;
      choose.listChild = object.categoryIds!;
    } else {
      if (choose.listChild.contains(object.id)) {
        choose.secondId = object.id;
      } else {
        choose.firstId = object.id;
        choose.listChild = object.categoryIds!;
        choose.secondId = 0;
      }
    }
    emit(StudyLoaded(study));
  }
}
