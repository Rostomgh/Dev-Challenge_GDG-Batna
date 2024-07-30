import 'package:dev_challenge/core/Theme/AppAssets.dart';
import 'package:dev_challenge/core/Theme/AppColor.dart';
import 'package:dev_challenge/core/Theme/AppSizes.dart';
import 'package:dev_challenge/features/Login/Widget/CustomContainer.dart';
import 'package:flutter/material.dart';

class StackAsste extends StatelessWidget {
  const StackAsste({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomConatiner(
      widget: Stack(children: [
        const Center(
          child: Text('Login',style: TextStyle(color: AppColor.white,fontSize: 100,fontWeight: FontWeight.bold,
          fontFamily:  'LufgaExtraBold'),
          ),
        ),
        Positioned(
          top: 190,
          left:45 ,
          right: 45,
          bottom: 0,
          child: Image.asset(
            AppAssets.logo,
            height: AppSizes.messure,
            width: AppSizes.messure,
          ),
        )
      ]),
    );
  }
}
