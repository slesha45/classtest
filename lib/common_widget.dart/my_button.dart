import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final bool isClicked;
  final VoidCallback onPressed;

  const MyButton({
    super.key,
    required this.text,
    required this.isClicked,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (isClicked) {
            return Colors.red;
          } else {
            return Colors.blueGrey;
          }
        }),
      ),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.w900, color: Colors.white),
      ),
    );
  }
}
