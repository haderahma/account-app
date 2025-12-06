import 'package:account_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class TextFeildWidget extends StatefulWidget {
  const TextFeildWidget({super.key, required this.control, required this.obscurepass, required this.mess, required this.icon, 
  });
 final TextEditingController control; 
 final bool obscurepass; 
 final String mess;
 final IconButton icon;

  @override
  State<TextFeildWidget> createState() => _TextFeildWidgetState();
}

class _TextFeildWidgetState extends State<TextFeildWidget> {
  final FocusNode focusNode = FocusNode();
  
  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {});
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      controller: widget.control,
      obscureText: widget.obscurepass,
      validator: (value) {
        if (value == null || value.isEmpty) {
      return widget.mess;
    }
    return null;
  
      },
      
      cursorColor: AppColor.mainColor,
      decoration: InputDecoration(
       suffixIcon: widget.icon, 
       filled: true,
        fillColor:  focusNode.hasFocus
            ? Color(0xFFD6F3FF)   // سماوي فاتح عند الفوكس
            : AppColor.grey,  
         
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
        ),
         
        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: AppColor.red)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColor.mainColor))
      ),

    );
  }
}