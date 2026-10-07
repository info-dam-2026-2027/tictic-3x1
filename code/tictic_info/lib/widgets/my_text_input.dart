import 'package:flutter/material.dart';
import 'package:tictic_info/styles/colors.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({
    super.key,
    required this.controller,
    required this.label,
    required this.placeholder,
    required this.validation,
  });

  final TextEditingController controller;
  final String label;
  final String placeholder;
  final FormFieldValidator<String> validation;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validation,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: kBlack,
          fontSize: 24,
          fontFamily: 'Poppins',
        ),
        hintText: placeholder,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(0)),
      ),
      //validator: ,
    );
  }
}