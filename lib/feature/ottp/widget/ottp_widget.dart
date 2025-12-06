import 'dart:async';

import 'package:account_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputCode extends StatelessWidget {
  InputCode({super.key, required this.data, required this.control});
  final String data;
  final TextEditingController control;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: control,
      textAlign: TextAlign.center,
      
      validator: (value) {
        if (value!.isEmpty) {
          return "فارغ";
        }
        return null;
      },
      onChanged: (value) {
        if (data == "start") {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        }
        if (data == "center") {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
          if (value.length == 0) {
            FocusScope.of(context).previousFocus();
          }
        }
        if (data == "end") {
          if (value.length == 0) {
            FocusScope.of(context).previousFocus();
          }
        }
      },
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'\d')),
      ],
      maxLength: 1,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: "*",
          filled: true,
          fillColor: AppColor.grey,
          focusedBorder: OutlineInputBorder( 
            borderSide: BorderSide(color: AppColor.mainColor),
            borderRadius: BorderRadius.circular(15)),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColor.grey))),
    );
  }
}
