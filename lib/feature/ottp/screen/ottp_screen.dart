import 'package:account_app/core/localization/app_string.dart';
import 'package:account_app/core/theme/app_color.dart';
import 'package:account_app/core/widgets/elevated_button_widget.dart';
import 'package:account_app/core/widgets/text_field_widget.dart';
import 'package:account_app/feature/ottp/widget/ottp_widget.dart';
import 'package:account_app/feature/sign_in/screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

class OttpScreen extends StatefulWidget {
  const OttpScreen({super.key});

  @override
  State<OttpScreen> createState() => _OttpScreenState();
}

class _OttpScreenState extends State<OttpScreen> {
  TextEditingController code1 = TextEditingController();
  TextEditingController code2 = TextEditingController();
  TextEditingController code3 = TextEditingController();
  TextEditingController code4 = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Center(child: Container(
        margin: EdgeInsets.only(left: 30,right: 30),
        padding: EdgeInsets.all(20),
        height: 300,
        decoration: BoxDecoration(
          color: AppColor.white,
           borderRadius: BorderRadius.circular(4),
           border: Border.all(
            color: AppColor.grey,
            width: 3
           ),

         ),
         child:  Form(
          key: formKey,
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
            
            Text(AppString.entercode,
            style: TextStyle(
              color: AppColor.darkBlue,
              fontSize: 22,
              fontWeight: FontWeight.w700),),
              Text(AppString.afourdigitcode,
            style: TextStyle(
              color: AppColor.darkBlue,
              fontSize: 16,
              fontWeight: FontWeight.w600),),
                const SizedBox(height: 20,),
                Row(children: [
                  Flexible(flex: 1, 
                  child: InputCode(data: 'start', control: code1,)),
                  const SizedBox(width: 8,),
                  Flexible(flex: 1,
                   child: InputCode(data: 'center', control: code2,)),
                  const SizedBox(width: 8,),
                  Flexible(flex: 1,
                   child: InputCode(data: 'center', control: code3,)),
                  const SizedBox(width: 8,),
                  Flexible(flex: 1, 
                  child: InputCode(data: 'end', control: code4,))
                ],),
                const SizedBox(height: 20,),
              Row(
                children: [
                  Flexible(flex: 1,
                    child: ElevatedButtonWidget(tex: AppString.confirm, onpressed: SignInScreen(), istextfield: true, formKey: formKey,)),
                  const SizedBox(width: 12,),
                  Flexible(flex: 1,
                    child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                   backgroundColor: AppColor.white,
                   shape: RoundedRectangleBorder(
                    side: BorderSide(color: AppColor.mainColor,width: 3),
                    borderRadius: BorderRadius.circular(12)),
                   fixedSize: Size(MediaQuery.of(context).size.width , 48), 
                  ),
                   onPressed: () { 
                     Navigator.pop(context);
                   }, 
                   child: Text(AppString.cancel,style: TextStyle(
                   color: AppColor.mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),),)
                  )
                ],
              ),
              
             
                   ],),
         ),
      )),
    );
  }
}