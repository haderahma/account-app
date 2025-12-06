import 'package:account_app/core/theme/app_color.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({super.key, required this.tex, required this.onpressed, required this.istextfield, required this.formKey});
  final Widget onpressed;
   final String tex;
   final bool istextfield;
   final GlobalKey<FormState> formKey;
  @override
  State<ElevatedButtonWidget> createState() => _ElevatedButtonWidgetState();
}

class _ElevatedButtonWidgetState extends State<ElevatedButtonWidget> {
  
  @override
  Widget build(BuildContext context) {
     
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.mainColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        fixedSize: Size(MediaQuery.of(context).size.width , 48), 
      ),
      onPressed: () { 
        if(widget.istextfield == true && widget.formKey.currentState!.validate()){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => widget.onpressed));
        }else if (widget.istextfield == false){
          Navigator.push(context, 
          MaterialPageRoute(builder: (context) => widget.onpressed));
        } 
    }, 
      child: Text(widget.tex,style: TextStyle(
        color: AppColor.white,
        fontSize: 16,
        fontWeight: FontWeight.w600),),);
  }
}