import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:mugo/randomizer_page.dart';
import 'package:mugo/text_field.dart';

typedef IntValueSetter = void Function(int value);

class FormRangeSelector extends StatelessWidget {
  final formKey;
  final IntValueSetter minValueSetter;
  final IntValueSetter maxValueSetter;

  FormRangeSelector(
      {super.key,
      required this.formKey,
      required this.minValueSetter,
      required this.maxValueSetter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InputField(
                label: "Maximum",
                intValueSetter: maxValueSetter,
              ),
              SizedBox(
                height: 20,
              ),
              InputField(
                label: "Minimum",
                intValueSetter: minValueSetter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
