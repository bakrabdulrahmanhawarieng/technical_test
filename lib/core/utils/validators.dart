import 'package:technical_test/core/constants/app_strings.dart';

/// validators file which contains validation for fullname, email address, phone number, address, password

String? validateFullName(String? value) {
  if (value == null || value.trim().isEmpty) {
    return AppStrings.fullNameValidation;
  }
  return null;
}

String? validateEmailAddress(String? value) {
  if (value == null || value.trim().isEmpty) {
    return AppStrings.emailAddressValidation;
  }

  final emailRegex =
      RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');

  if (!emailRegex.hasMatch(value)) {
    return AppStrings.validEmailAdressValidation;
  }

  return null;
}

String? validatePhoneNumber(String? value) {
  if (value == null || value.trim().isEmpty) {
    return AppStrings.phoneNumberValidation;
  }
  return null;
}

String? validateAddress(String? value) {
  if (value == null || value.trim().isEmpty) {
    return AppStrings.addressValidation;
  }
  return null;
}

String? validatePassword(String? value) {
  if (value == null || value.trim().isEmpty) {
    return AppStrings.passwordValidation;
  }
  if (value.length < 8) {
    return AppStrings.passwordLengthValidation;
  }
  return null;
}
