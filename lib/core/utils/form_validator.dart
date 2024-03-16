class FormValidator {
  FormValidator._();

  static String? validateEmail(String value) {
    String pattern = r"(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)";
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Email can't be empty";
    } else if (!regExp.hasMatch(value)) {
      return "Email not valid";
    } else if (value.length > 100) {
      return "Email too long";
    } else {
      return null;
    }
  }

  static String? validatePassword(
    String value, {
    String? textError,
    bool spaceAllowed = false,
  }) {
    if (value.isEmpty) {
      return textError ?? "Password can't be empty";
    }

    if (!spaceAllowed) {
      return validateSpace(value);
    }

    return null;
  }

  static String? validateForm(
    String value, {
    String? textError,
    bool spaceAllowed = false,
    String fieldName = 'Form',
  }) {
    if (value.isEmpty) {
      return textError ?? "$fieldName can't be empty";
    }

    if (!spaceAllowed) {
      return validateSpace(value);
    }

    return null;
  }

  static String? validatePhoneNum(String value) {
    String pattern = r'^[0-9]{8,12}$';
    RegExp regExp = RegExp(pattern);
    if (value.isEmpty) {
      return "Phone number can't be empty";
    } else if (!regExp.hasMatch(value)) {
      return "Phone number not valid";
    } else if (value.length > 20) {
      return "Phone number too long";
    } else {
      return null;
    }
  }

  static String? validateSpace(String value) {
    if (RegExp(r"\s").hasMatch(value)) {
      return 'Spaces are not allowed';
    }

    return null;
  }
}
