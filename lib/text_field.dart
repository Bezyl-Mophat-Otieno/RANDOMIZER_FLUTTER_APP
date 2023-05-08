import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class InputField extends StatelessWidget {
  final String? label;
  final void Function(int value) intValueSetter;
  const InputField(
      {super.key, required this.label, required this.intValueSetter});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
          InputDecoration(border: const OutlineInputBorder(), labelText: label),
      keyboardType:
          TextInputType.numberWithOptions(decimal: false, signed: true),
      validator: (value) {
        if (value == null || int.parse(value) == null)
          return "Must be an interger";
        else {
          return null;
        }
      },
      onSaved: (newValue) => intValueSetter(int.parse(newValue ?? "")),
    );
  }
}
