bool isTextLongEnough(String? text) {
  return text == null || text.length < 6;
}

String? textErrorText(String? text) {
  final bool shouldShowErrorText = isTextLongEnough(text);
  if (shouldShowErrorText) {
    return 'Please enter at least 6 characters';
  }
  return null;
}
