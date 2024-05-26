import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final bool isMandatory;
  final bool obscureText;
  final int maxLines;

  TextfieldWidget({
    required this.controller,
    required this.hintText,
    required this.labelText,
    this.isMandatory = false,
    this.obscureText = false,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      maxLines: maxLines,
      decoration: InputDecoration(
        label: RichText(
          text: TextSpan(
            text: labelText,
            style: TextStyle(color: Colors.grey, fontSize: 14),
            children: <TextSpan>[
              if (isMandatory)
                TextSpan(
                  text: '*',
                  style: TextStyle(color: Color(0xffFF0000)),
                ),
            ],
          ),
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
