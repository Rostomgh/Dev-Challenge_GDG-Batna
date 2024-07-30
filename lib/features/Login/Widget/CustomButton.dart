import 'package:dev_challenge/core/Theme/AppColor.dart';
import 'package:dev_challenge/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function() onpress;
  const CustomButton({super.key, required this.onpress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child:  Container(
        height: AppSizes.heiB,
        width: AppSizes.widB,
        child: MaterialButton(
          onPressed: onpress,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          color: AppColor.primaryColor,
          child: const Text(
            'Login',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}
