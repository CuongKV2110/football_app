import 'package:music_app/data/models/user.dart';

class SignInRepository {
  String email;
  String password;

  SignInRepository(this.email, this.password);

  getData() {
    return User(email: 'test@gmail.com', password: '123456');
  }
}
