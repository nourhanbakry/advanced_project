class AppRegx {
  static bool isValidEmail(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

  static bool isValidPassword(String password) {
    return RegExp(
            r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
        .hasMatch(password);
  }

  static bool isPhoneNumber(String phoneNumber) {
    return RegExp(r'^(010|011|012|015)[0-9]{8}$').hasMatch(phoneNumber);
  }

  static bool hasLowerCase(String password) {
    return RegExp(r'(?=.*?[a-z])').hasMatch(password);
  }

  static bool hasUpperCase(String password) {
    return RegExp(r'(?=.*?[A-Z])').hasMatch(password);
  }

  static bool hasNumber(String password) {
    return RegExp(r'(?=.*?[0-9])').hasMatch(password);
  }

  static bool hasSpecialChar(String password) {
    return RegExp(r'(?=.*?[!@#\$&*~])').hasMatch(password);
  }

  static bool hasMinLength(String password) {
    return RegExp(r'(?=.{8,})').hasMatch(password);
  }
}
