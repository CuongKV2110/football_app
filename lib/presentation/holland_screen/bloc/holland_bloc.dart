import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music_app/domain/usecases/holland_usecase.dart';
import 'package:music_app/presentation/holland_screen/bloc/holland_state.dart';

class HollandBloc extends Cubit<HollandState> {
  HollandUsecase hollandUsecase;

  HollandBloc(this.hollandUsecase) : super(HollandInitial());

  Future<void> getDataHolland() async {
    emit(HollandLoading());

    var resHolland = await hollandUsecase.getData();

    emit(HollandSuccess(resHolland));
  }
}
