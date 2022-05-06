import 'package:bloc/bloc.dart';
import 'package:music_app/domain/helpers/validate_helper.dart';
import 'package:music_app/presentation/sign_in_screen/bloc/sign_in_state.dart';

class SignInBloc extends Cubit<SignInState> {
  SignInBloc() : super(SignInInitial());
  String errorMessage = '';

  Future<void> signIn(String email, String password) async {
    print('Login');
    emit(SignInLoading());

    if (email == 'test@gmail.com' && password == '123456') {
      emit(SignInSuccess());
      print('Success');
      return;
    }
    if (email.isEmpty) {
      errorMessage = 'Email trống';
      emit(SignInError());
      return;
    }
    if (!ValidationHelper.isEmailValid(email)) {
      errorMessage = 'Email không hợp lệ';
      emit(SignInError());
      return;
    }

    if (password.isEmpty) {
      errorMessage = 'Mật khẩu trống';
      emit(SignInError());
      return;
    }
    if (password.length < 6) {
      errorMessage = 'Mật khẩu phải từ 6 kí tự trở lên';
      emit(SignInError());
      return;
    } else {
      emit(SignInError());
      errorMessage = 'Tài khoản không chính xác';
      return;
    }
  }
}
