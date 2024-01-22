import 'dart:developer';

String? lengthValidator(value) {
  if (value == null || value.length < 6) {
    log("length validation went wrong.");
    return 'Please enter at least 6 characters';
  }
  return null;
}
