import 'package:flutter/material.dart';
import 'package:todo/app_theme.dart';

class DefultTextFormField extends StatelessWidget {
  DefultTextFormField(
      {required this.controller,
      required this.hinttext,
      this.validator,
      this.maxlines});
  TextEditingController controller;
  String hinttext;
  int? maxlines;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hinttext,
      ),
      minLines: 1,
      maxLines: maxlines,
      keyboardType: TextInputType.multiline,
      validator: validator,
      style: TextStyle(
        color: AppTheme.black,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
