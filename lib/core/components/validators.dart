class AppValidators {
  AppValidators._();

  // Validate Email
  static String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your email';
    }

    RegExp emailRegex = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }

    return null;
  }

  // Validate Name
  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your name';
    }

    RegExp nameRegex = RegExp(r'^[a-zA-Z\s]+$');
    if (!nameRegex.hasMatch(value)) {
      return 'Please enter a valid name';
    }

    return null;
  }

  // Validate Password
  static String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your password';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    RegExp passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$&*~]).{8,}$',
    );
    if (!passwordRegex.hasMatch(value)) {
      return 'Please enter a valid password';
    }

    return null;
  }

  // Validate Phone Number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your phone number';
    }

    if (value.length != 11) {
      return 'Phone number must be 11 digits';
    }

    RegExp phoneNumberRegex = RegExp(r'^[0-9]{11}$');
    if (!phoneNumberRegex.hasMatch(value)) {
      return 'Please enter a valid phone number';
    }

    return null;
  }

  // Validate National ID
  static String? validateNationalID(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your National ID';
    }

    if (value.length != 14) {
      return 'National ID must be 14 digits';
    }

    RegExp nationalIDRegex = RegExp(r'^[0-9]{14}$');
    if (!nationalIDRegex.hasMatch(value)) {
      return 'Please enter a valid National ID';
    }

    return null;
  }

  // Validate Date of Birth
  static String? validateDateOfBirth(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Please enter your date of birth';
    }

    RegExp dateOfBirthRegex = RegExp(r'^\d{4}-\d{2}-\d{2}$'); // YYYY-MM-DD
    if (!dateOfBirthRegex.hasMatch(value)) {
      return 'Please enter a valid date of birth (YYYY-MM-DD)';
    }

    try {
      DateTime dob = DateTime.parse(value);
      DateTime now = DateTime.now();
      if (dob.isAfter(now)) {
        return 'Date of birth cannot be in the future';
      }
    } catch (e) {
      return 'Please enter a valid date';
    }

    return null;
  }
}
