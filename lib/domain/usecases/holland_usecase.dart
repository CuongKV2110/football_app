import 'package:injectable/injectable.dart';
import 'package:music_app/presentation/holland_screen/models/holland.dart';

import '../../data/models/animal.dart';
import '../repositories/holland_repository.dart';

@injectable
class HollandUsecase {
  HollandRepository _hollandRepository;

  HollandUsecase(this._hollandRepository);

  Future<Holland> getData() async {
    return await _hollandRepository.getData();
  }
}
