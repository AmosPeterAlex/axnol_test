import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final String? suffixText;
  final String errorMessage;
  final bool obscureText;
  final Function()? onSuffixTap;

  TextFormFieldWidget({
    required this.controller,
    required this.hintText,
    required this.labelText,
     this.suffixText,
    required this.errorMessage,
    this.obscureText = false,
    this.onSuffixTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return errorMessage;
        }
        return null;
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xfff3f5f5),
        label: RichText(
          text: TextSpan(
            text: labelText,
            style: TextStyle(color: Colors.grey, fontSize: 14),
            children: <TextSpan>[
              TextSpan(
                text: '*',
                style: TextStyle(color: Color(0xffFF0000)),
              ),
            ],
          ),
        ),
        suffixIcon: GestureDetector(
          onTap: onSuffixTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 14),
            child: Text(
              suffixText!,
              style: TextStyle(
                  color: Color(0xffFF0000),
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
          ),
        ),
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
