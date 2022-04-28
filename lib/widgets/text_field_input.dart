// ignore_for_file: non_constant_identifier_names
import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  final Icon Icons;

  const TextFieldInput(
      {Key? key,
      required this.textEditingController,
      required this.hintText,
      required this.Icons,
      required this.textInputType,
      this.isPass = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final InputBorder = OutlineInputBorder(
      borderSide: Divider.createBorderSide(context),
    );
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          border: InputBorder,
          focusedBorder: InputBorder,
          enabledBorder: InputBorder,
          filled: true,
           icon: Icons ,
          contentPadding: EdgeInsets.all(8.0)),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
