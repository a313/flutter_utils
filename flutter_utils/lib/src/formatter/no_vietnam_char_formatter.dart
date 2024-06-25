import 'package:flutter/services.dart';

import 'convert_vietnam_char.dart';

class NoVietnamCharFormatter extends TextInputFormatter {
  NoVietnamCharFormatter();

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    return TextEditingValue(
      text: ConvertVietnamCore.unsign(newValue.text),
      selection: newValue.selection,
    );
  }
}
