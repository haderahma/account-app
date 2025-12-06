import 'package:account_app/core/localization/app_string.dart';
import 'package:account_app/core/theme/app_color.dart';
import 'package:account_app/core/widgets/elevated_button_widget.dart';
import 'package:account_app/core/widgets/text_field_widget.dart';
import 'package:account_app/feature/ottp/screen/ottp_screen.dart';
import 'package:account_app/feature/sign_in/screen/sign_in_screen.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool agree = true;
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
        title: Text(AppString.back,
      style: TextStyle(
          color: AppColor.darkBlue,
          fontSize: 16,
          fontWeight: FontWeight.w600),),),
      body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Text(AppString.forgetPassword,
          style: TextStyle(
            color: AppColor.mainColor,
            fontSize: 42,
            fontWeight: FontWeight.w700),),
            Text(AppString.enteryouremailfortheverification,
          style: TextStyle(
            color: AppColor.darkBlue,
            fontSize: 16,
            fontWeight: FontWeight.w600),),
            const SizedBox(height: 100,),
            
            Text(AppString.email,
          style: TextStyle(
            color: AppColor.darkBlue,
            fontSize: 16,
            fontWeight: FontWeight.w600),),
            TextFeildWidget(control: email, obscurepass: false, mess: AppString.erroemail, icon: IconButton(icon: Icon(Icons.check,), onPressed: () {  },)),
            
              const SizedBox(height: 50,),
            ElevatedButtonWidget(tex: AppString.continue1, onpressed: OttpScreen(), istextfield: true, formKey: formKey,),
            
           
        ],),
      ),
    ),
    );
  }
}