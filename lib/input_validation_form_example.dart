import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:text_input_validation_forms/helpers.dart';
import 'package:text_input_validation_forms/validators.dart';

class InputValidationFormExample extends StatefulWidget {
  const InputValidationFormExample({super.key});

  @override
  State<InputValidationFormExample> createState() {
    return _InputValidationFormExampleState();
  }
}

class _InputValidationFormExampleState
    extends State<InputValidationFormExample> {
  final _formKey = GlobalKey<FormState>();
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: "FormExample"),
              onChanged: (value) => text = value,
              validator: textErrorText,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  log(text);
                  showSnackbar(context, text);
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
