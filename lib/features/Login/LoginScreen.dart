import 'package:dev_challenge/core/Theme/AppSizes.dart';
import 'package:dev_challenge/features/Login/Widget/CustomButton.dart';
import 'package:dev_challenge/features/Login/Widget/CustomInput.dart';
import 'package:dev_challenge/features/Login/Widget/StackAssets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children:  [
            const StackAsste(),
            SizedBox(height: AppSizes.between,),
            const CustomInput(hint: 'Enter your email',label: 'Email',),
            CustomButton(onpress: (){},),
          ],
        ),
      ),
    );
  }
}