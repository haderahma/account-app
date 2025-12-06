import 'package:account_app/core/localization/app_string.dart';
import 'package:account_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key, required this.tex, required this.img});
  final String tex;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 48,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColor.mainColor)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image.asset(img),
        const SizedBox(width: 8,),
        Text(tex,
             style: TextStyle(
              color: AppColor.mainColor,
              fontSize: 16,
             fontWeight: FontWeight.w600),),
      ],),

    );
  }
}