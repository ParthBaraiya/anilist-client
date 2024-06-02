import 'package:flutter/services.dart';

class KeyboardUtility {
  static hideKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
  }
}
