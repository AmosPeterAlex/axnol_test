import 'package:flutter/material.dart';

class MaterialButtonWidget extends StatelessWidget {
  final Color color;
  final double height;
  final double minWidth;
  final bool isLoading;
  final String buttonText;
  final VoidCallback onPressed;

  MaterialButtonWidget({
    required this.color,
    required this.height,
    required this.minWidth,
    required this.isLoading,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      height: height,
      minWidth: minWidth,
      onPressed: onPressed,
      child: isLoading
          ? CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Color(0xffFF0000)),
      )
          : Text(
        buttonText,
        style: TextStyle(color: Colors.white, fontSize: 14),
      ),
    );
  }
}
