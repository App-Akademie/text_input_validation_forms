import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:text_input_validation_forms/helpers.dart';
import 'package:text_input_validation_forms/validators.dart';

class InputValidationControllerExample extends StatefulWidget {
  const InputValidationControllerExample({super.key});

  @override
  State<InputValidationControllerExample> createState() {
    return _InputValidationControllerExampleState();
  }
}

class _InputValidationControllerExampleState
    extends State<InputValidationControllerExample> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
              decoration: const InputDecoration(labelText: "ControllerExample"),
              controller: controller,
              validator: lengthValidator,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  log(controller.text);
                  showSnackbar(context, controller.text);
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
