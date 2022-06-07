import 'package:music_app/presentation/study_screen/models/study.dart';

abstract class StudyState {}

class StudyInitial extends StudyState {}

class StudyLoading extends StudyState {}

class StudyLoaded extends StudyState {
  final Study study;

  StudyLoaded(this.study);
}

class StudyError extends StudyState {}
