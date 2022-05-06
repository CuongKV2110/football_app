import 'package:music_app/domain/repositories/sign_in_repository.dart';

class SignInUserCase {
  SignInRepository signInRepository;

  SignInUserCase(this.signInRepository);

  signIn() {
    return signInRepository.getData();
  }
}
