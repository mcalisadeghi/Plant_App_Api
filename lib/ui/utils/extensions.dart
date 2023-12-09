extension ExtString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?",
    );
    return emailRegExp.hasMatch(
      this,
    );
  }

  bool get isValidPassword {
    final emailRegExp = RegExp(
      r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$",
    );
    return emailRegExp.hasMatch(
      this,
    );
  }
}
