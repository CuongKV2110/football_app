import 'dart:ui';

import 'package:music_app/presentation/study_screen/models/category.dart';

abstract class CategoryState {}

class CategoryInitial extends CategoryState {}

class CategoryLoading extends CategoryState {}

class CategoryLoaded extends CategoryState {
  final Category category;

  CategoryLoaded(this.category);
}

class CategoryError extends CategoryState {}

/*class CategorySelected extends CategoryState {
  Color color;
  CategorySelected(this.color);
}*/
