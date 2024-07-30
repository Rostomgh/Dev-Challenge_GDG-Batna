import 'package:dev_challenge/core/Theme/AppColor.dart';
import 'package:dev_challenge/core/Theme/AppSizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomConatiner extends StatelessWidget {
  final Widget widget;
  const CustomConatiner({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.HeightC,
      width: AppSizes.WidthC,
      decoration:  BoxDecoration(
        color: AppColor.primaryColor,
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(100.0.r).w,bottomLeft: Radius.circular(100.0.r).w),
      ),
      child: widget,

    );
  }
}