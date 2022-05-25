import 'package:music_app/presentation/study_screen/models/category.dart';

import '../../models/objects.dart';

abstract class ObjectState {}

class ObjectInitial extends ObjectState {}

class ObjectLoading extends ObjectState {}

class ObjectLoaded extends ObjectState {
  final Objects object;

  ObjectLoaded(this.object);
}

class ObjectError extends ObjectState {}
