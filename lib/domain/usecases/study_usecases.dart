import 'package:injectable/injectable.dart';
import '../../presentation/study_screen/models/category_request.dart';
import '../../presentation/study_screen/models/object_request.dart';
import '../repositories/study_repositories.dart';

@injectable
class StudyUseCase {
  StudyRepository studyRepository;

  StudyUseCase(this.studyRepository);

  getDataCategory(CategoryRequest param) async {
    return await studyRepository.getDataCategory(param);
  }

  getDataObject(ObjectRequest body) async {
    return await studyRepository.getDataObject(body);
  }
}
