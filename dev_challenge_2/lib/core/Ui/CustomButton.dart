import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onpress;

  const CustomButton({super.key, this.onpress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onpress,
      color: Colors.blue,
      minWidth: 300,
      height: 50,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
    ),
      child: const Text(
          'Login',
        style: TextStyle(color: Colors.white),
      ));
  }
}