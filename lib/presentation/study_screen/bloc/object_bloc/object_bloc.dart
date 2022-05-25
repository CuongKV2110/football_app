import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/domain/usecases/study_usecases.dart';
import 'package:music_app/presentation/study_screen/models/object_request.dart';
import 'package:music_app/presentation/study_screen/models/object_result.dart';
import 'package:music_app/presentation/study_screen/models/objects.dart';

import '../../models/category_request.dart';
import 'object_state.dart';

class ObjectBloc extends Cubit<ObjectState> {
  ObjectBloc(this.studyUseCase) : super(ObjectInitial());
  StudyUseCase studyUseCase;
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

  Future<Objects> getDataObject() async {
    emit(ObjectLoading());
    Objects _response =
        Objects(serverTime: DateTime.now(), result: ObjectResult());
    var resObject = await studyUseCase.getDataObject(objectRequest);
    if (resObject != null) {
      print(resObject);
      emit(ObjectLoaded(resObject));
      return resObject;
    } else {
      emit(ObjectError());
      return _response;
    }
  }
}
