import 'package:dev_challenge/core/Theme/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomInput extends StatelessWidget {
  final Color? clr;
  final TextEditingController controller;
  final String label;
  final String hint;
  final Function(String)? onChanged;
  final bool obc;

  const CustomInput({
    super.key,
    required this.label,
    required this.hint,
    this.onChanged,
    required this.controller,
    this.clr, required this.obc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0).w,
      child: TextFormField(
        obscureText: obc,
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r).w,
            borderSide: BorderSide(
              color: clr ?? AppColor.hintColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100.r).w,
            borderSide: BorderSide(
              color: clr ?? AppColor.hintColor,
            ),
          ),
          labelText: label,
          labelStyle:  TextStyle(
            color: AppColor.TextColor,
            fontSize: 17.sp,
            fontWeight: FontWeight.w400,
          ),
          hintText: hint,
          hintStyle:  TextStyle(
            color: AppColor.hintColor,
            fontSize: 16.sp,
          ),
          contentPadding:
               const EdgeInsets.symmetric(horizontal: 20, vertical: 19).w,
        ),
      ),
    );
  }
}
