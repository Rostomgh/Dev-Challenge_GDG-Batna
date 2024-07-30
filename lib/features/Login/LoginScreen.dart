import 'package:dev_challenge/core/Theme/AppColor.dart';
import 'package:dev_challenge/core/Theme/AppSizes.dart';
import 'package:dev_challenge/core/helper/Regex.dart';
import 'package:dev_challenge/features/Login/Widget/CustomButton.dart';
import 'package:dev_challenge/features/Login/Widget/CustomInput.dart';
import 'package:dev_challenge/features/Login/Widget/CustomTextRich.dart';
import 'package:dev_challenge/features/Login/Widget/StackAssets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isEmailValid = false;
  bool isPasswordValid = false;
  Color emailBorderColor = AppColor.hintColor;
  Color passwordBorderColor = AppColor.hintColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            
            const StackAssets(),
            const SizedBox(
              height: AppSizes.between,
            ),
            CustomInput(
              obc: false,
              controller: emailController,
              hint: 'Enter your email',
              label: 'Email',
              clr: emailBorderColor,
              onChanged: (val) {
                setState(() {
                  isEmailValid = val.isNotEmpty && AppRegex.isemail(emailController.text);
                  emailBorderColor = isEmailValid ? AppColor.green : AppColor.red;
                  if (val.isEmpty) {
                    emailBorderColor = AppColor.hintColor;
                  }
                });
              },
            ),
            const SizedBox(
              height: AppSizes.betweenInput,
            ),
            CustomInput(
              obc: true,
              controller: passwordController,
              hint: 'Enter your password',
              label: 'Password',
              clr: passwordBorderColor,
              onChanged: (val) {
                setState(() {
                  isPasswordValid = val.isNotEmpty && AppRegex.isPass(passwordController.text);
                  passwordBorderColor = isPasswordValid ? AppColor.green : AppColor.red;
                  if (val.isEmpty) {
                    passwordBorderColor = AppColor.hintColor;
                  }
                });
              },
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('Forget Password',style: TextStyle(color: AppColor.TextColor,fontSize: 16,fontWeight: FontWeight.w600),),
            ),
            CustomButton(
              onpress: () {
              
              },
            ),
            const SizedBox(height:AppSizes.heiB ),
            const CustomTextRich()
          ],
        ),
      ),
    );
  }
}
