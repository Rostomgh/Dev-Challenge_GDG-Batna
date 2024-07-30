import 'package:dev_challenge/core/Theme/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final String hint;
  final Function(String)? onchange;
  const CustomInput({super.key, required this.label, required this.hint, this.onchange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        onChanged: onchange,
        decoration:  InputDecoration(
          border:  const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            borderSide: BorderSide(color: AppColor.primaryColor),
            
          ),
          labelText:label,
          labelStyle: const TextStyle(
            color: AppColor.TextColor,
            fontSize:16,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: AppColor.hintColor,
            fontSize: 16,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 19),
      
        ),
      
      
      ),
    );
  }
}