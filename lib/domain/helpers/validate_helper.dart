class ValidationHelper {
  static bool isEmailValid(String text) {
    return RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text);
  }
}
