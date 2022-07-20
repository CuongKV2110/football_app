import 'package:music_app/presentation/holland_screen/models/holland.dart';

abstract class HollandState {}

class HollandInitial extends HollandState {}

class HollandLoading extends HollandState {}

class HollandSuccess extends HollandState {
  Holland holland;

  HollandSuccess(this.holland);
}

class HollandError extends HollandState {}
