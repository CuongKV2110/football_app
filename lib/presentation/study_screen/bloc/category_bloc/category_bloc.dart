import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/domain/usecases/study_usecases.dart';
import 'package:music_app/presentation/study_screen/models/category.dart';
import 'package:music_app/presentation/study_screen/models/category_request.dart';
import 'package:music_app/presentation/study_screen/models/category_result.dart';

import 'category_state.dart';

class CategoryBloc extends Cubit<CategoryState> {
  CategoryBloc(this.studyUseCase) : super(CategoryInitial());
  StudyUseCase studyUseCase;
  CategoryRequest categoryRequest = CategoryRequest(
    parentID: 0,
    block: 4,
    code: 'guide_main_category',
    getChilds: false,
    systemObjectId: 0,
  );

  Future<Category> getDataCategory() async {
    emit(CategoryLoading());
    Category _reponse =
        Category(serverTime: DateTime.now(), result: <CategoryResult>[]);

    Category resCategory = await studyUseCase.getDataCategory(categoryRequest);
    if (resCategory != null) {
      print(resCategory);
      emit(CategoryLoaded(resCategory));
      return resCategory;
    } else {
      emit(CategoryError());
      return _reponse;
    }
  }

/*  void selected() {
    emit(CategoryLoading());
    color = Color(0xFF50320F);
    emit(CategorySelected(color));
  }*/
}
