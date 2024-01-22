import 'package:flutter/material.dart';
import 'package:text_input_validation_forms/input_validation_controller_example.dart';
import 'package:text_input_validation_forms/input_validation_form_example.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const InputValidationExamples(),
      ),
    );
  }
}

class InputValidationExamples extends StatelessWidget {
  const InputValidationExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(child: InputValidationFormExample()),
          SizedBox(height: 16),
          Card(child: InputValidationControllerExample()),
        ],
      ),
    );
  }
}
