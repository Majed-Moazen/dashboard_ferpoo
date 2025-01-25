import 'package:flutter/material.dart';
import '../constant/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      this.VoidCallback,
      this.height = 60,
      this.width = 200});
  final String text;
  final VoidCallback;
  final int height;
  final int width;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: MaterialButton(
        color: primaryColor,
        minWidth: 200,
        height: 60,
        onPressed: VoidCallback,
        child: Text('Sign In'),
      ),
    );
  }
}
